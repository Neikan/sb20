// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel_detailed/api_hotel_detailed.dart';

part 'bloc_hotel_state.freezed.dart';

@freezed
class BlocHotelState with _$BlocHotelState {
  const factory BlocHotelState.loading() = BlocHotelStateLoading;

  const factory BlocHotelState.loaded(ApiHotelDetailed hotel) =
      BlocHotelStateLoaded;

  const factory BlocHotelState.error(String error) =
      BlocHotelStateError;
}
