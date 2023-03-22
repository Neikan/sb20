// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/consts/keys.dart';
import 'package:app_perfomance/consts/routes.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/screens/screen_hotel/screen_hotel.dart';
import 'package:app_perfomance/screens/screen_hotels/screen_hotels.dart';
import 'package:app_perfomance/screens/screen_not_found.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeHotels:
            return const ScreenHotels();

          case routeHotel:
            final arguments = settings.arguments as Map<String, ApiHotel>;
            final hotel = arguments[keyHotel]!;

            return ScreenHotel(hotel: hotel);

          default:
            return const ScreenNotFound();
        }
      },
    );
