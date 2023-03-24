// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';

part 'bloc_hotels_state.freezed.dart';

@freezed
class BlocHotelsState with _$BlocHotelsState {
  const factory BlocHotelsState.loading() = BlocHotelsStateLoading;

  const factory BlocHotelsState.loaded(List<ApiHotel> hotels) =
      BlocHotelsStateLoaded;

  const factory BlocHotelsState.error(String error) =
      BlocHotelsStateError;
}
