// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:app_perfomance/components/app_error_data.dart';
import 'package:app_perfomance/components/app_header.dart';
import 'package:app_perfomance/components/app_loader.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/models/api_hotel_detailed/api_hotel_detailed.dart';
import 'package:app_perfomance/screens/screen_hotel/components/hotel_address.dart';
import 'package:app_perfomance/screens/screen_hotel/components/hotel_photos.dart';
import 'package:app_perfomance/screens/screen_hotel/components/hotel_services/hotel_services.dart';
import 'package:app_perfomance/services/service_http.dart';

class ScreenHotel extends StatelessWidget {
  final ApiHotel hotel;

  const ScreenHotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(title: hotel.name),
      body: FutureBuilder(
        future: ServiceHttp.instance.get(hotel.uuid),
        builder: (BuildContext _, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              String message = (snapshot.error as DioError).message;

              return AppErrorData(text: message);
            }

            final Response<dynamic> response = snapshot.data;

            final ApiHotelDetailed hotelDetailed =
                ApiHotelDetailed.fromJson(response.data);

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HotelPhotos(photos: hotelDetailed.photos),
                  HotelAddress(address: hotelDetailed.address),
                  HotelServices(services: hotelDetailed.services),
                ],
              ),
            );
          }

          return const AppLoader();
        },
      ),
    );
  }
}
