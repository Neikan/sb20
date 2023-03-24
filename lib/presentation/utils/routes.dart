// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/data/repositories/repository_hotels/repository_hotels_imp.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotels/bloc_hotels.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotels/bloc_hotels_events.dart';
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
            return BlocProvider<BlocHotels>(
              create: (_) => BlocHotels(repo: const RepositoryHotelsImp())
                ..add(BlocHotelsEventInit()),
              child: const ScreenHotels(),
            );

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
