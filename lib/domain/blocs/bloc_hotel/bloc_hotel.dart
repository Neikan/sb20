// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_perfomance/data/repositories/repository_hotel/repository_hotel.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotel/bloc_hotel_events.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotel/bloc_hotel_state.dart';

class BlocHotel extends Bloc<BlocHotelEvent, BlocHotelState> {
  final RepositoryHotel repo;

  BlocHotel({required this.repo}) : super(const BlocHotelState.loading()) {
    on<BlocHotelEventInit>(_init);
  }

  Future<void> _init(
    BlocHotelEventInit event,
    Emitter<BlocHotelState> emit,
  ) async {
    try {
      final hotel = await repo.getData(event.uuid);

      if (hotel != null) {
        emit(BlocHotelState.loaded(hotel));
      }
    } on DioError catch (e) {
      emit(BlocHotelState.error(e.message));
    }
  }
}
