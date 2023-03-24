// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/data/models/api_hotel_detailed/api_hotel_detailed.dart';
import 'package:app_perfomance/data/models/api_hotel_detailed/submodels/api_hotel_address.dart';
import 'package:app_perfomance/data/models/api_hotel_detailed/submodels/api_hotel_services.dart';
import 'package:app_perfomance/data/services/service_http.dart';
import 'package:app_perfomance/presentation/consts/keys.dart';
import 'package:app_perfomance/presentation/consts/translations.dart';
import 'package:app_perfomance/presentation/consts/urls.dart';
import 'package:app_perfomance/presentation/styles/text.dart';
import 'package:app_perfomance/presentation/ui/components/ui_app_bar.dart';
import 'package:app_perfomance/presentation/ui/components/ui_error_data.dart';
import 'package:app_perfomance/presentation/ui/components/ui_loader.dart';
import 'package:app_perfomance/presentation/ui/components/ui_row_data.dart';
import 'package:app_perfomance/presentation/ui/components/ui_text.dart';

part 'components/ui_hotel_address.dart';
part 'components/ui_hotel_photos.dart';
part 'components/ui_hotel_services.dart';
part 'components/ui_services_list.dart';

class ScreenHotel extends StatelessWidget {
  final ApiHotel hotel;

  const ScreenHotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiAppBar(title: hotel.name),
      body: FutureBuilder(
        future: ServiceHttp.instance.get(hotel.uuid),
        builder: (BuildContext _, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              String message = (snapshot.error as DioError).message;

              return UiErrorData(text: message);
            }

            final Response<dynamic> response = snapshot.data;

            final ApiHotelDetailed hotelDetailed =
                ApiHotelDetailed.fromJson(response.data);

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _UiHotelPhotos(photos: hotelDetailed.photos),
                  _UiHotelAddress(address: hotelDetailed.address),
                  _UiHotelServices(services: hotelDetailed.services),
                ],
              ),
            );
          }

          return const UiLoader();
        },
      ),
    );
  }
}
