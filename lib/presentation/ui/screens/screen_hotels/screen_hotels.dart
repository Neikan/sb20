// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:app_perfomance/data/consts/urls.dart';
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/data/services/service_http.dart';
import 'package:app_perfomance/presentation/ui/components/ui_error_data.dart';
import 'package:app_perfomance/presentation/ui/components/ui_loader.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/ui_app_bar_hotels.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/ui_view_hotels.dart';

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
              appBar: const UiAppBarHotels(),
              body: UiErrorData(text: message),
            );
          }

          final Response<dynamic> response = snapshot.data;

          List<ApiHotel> hotels = List.from(response.data)
              .map((hotel) => ApiHotel.fromJson(hotel))
              .toList();

          return UiViewHotels(hotels: hotels);
        }

        return const Scaffold(
          appBar: UiAppBarHotels(),
          body: UiLoader(),
        );
      },
    );
  }
}
