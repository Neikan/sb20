// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:app_perfomance/components/app_error_data.dart';
import 'package:app_perfomance/components/app_loader.dart';
import 'package:app_perfomance/consts/urls.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/screens/screen_hotels/components/header_hotels.dart';
import 'package:app_perfomance/screens/screen_hotels/components/view_hotels.dart';
import 'package:app_perfomance/services/service_http.dart';

class ScreenHotels extends StatelessWidget {
  const ScreenHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ServiceHttp.instance.get(urlHotels),
      builder: (BuildContext _, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            String message = (snapshot.error as DioError).message;

            return Scaffold(
              appBar: const HeaderHotels(),
              body: AppErrorData(text: message),
            );
          }

          final Response<dynamic> response = snapshot.data;

          List<ApiHotel> hotels = List.from(response.data)
              .map((hotel) => ApiHotel.fromJson(hotel))
              .toList();

          return ViewHotels(hotels: hotels);
        }

        return const Scaffold(
          appBar: HeaderHotels(),
          body: AppLoader(),
        );
      },
    );
  }
}
