// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_perfomance/data/repositories/repository_hotels/repository_hotels.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotels/bloc_hotels_events.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotels/bloc_hotels_state.dart';

class BlocHotels extends Bloc<BlocHotelsEvent, BlocHotelsState> {
  final RepositoryHotels repo;

  BlocHotels({required this.repo}) : super(const BlocHotelsState.loading()) {
    on<BlocHotelsEventInit>(_init);
  }

  Future<void> _init(
    BlocHotelsEventInit event,
    Emitter<BlocHotelsState> emit,
  ) async {
    try {
      final hotels = await repo.getData();

      emit(BlocHotelsState.loaded(hotels));
    } catch (e) {
      emit(BlocHotelsState.error(e.toString()));
    }
  }
}
