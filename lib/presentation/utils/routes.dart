// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/presentation/consts/keys.dart';
import 'package:app_perfomance/presentation/consts/routes.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotel/screen_hotel.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/screen_hotels.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_memory_leak.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_not_found.dart';

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

          case routeMemoryLeaks:
            return const ScreenMemoryLeaks();

          default:
            return const ScreenNotFound();
        }
      },
    );
