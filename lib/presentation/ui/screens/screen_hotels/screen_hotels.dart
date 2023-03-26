// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotels/bloc_hotels.dart';
import 'package:app_perfomance/domain/blocs/bloc_hotels/bloc_hotels_state.dart';
import 'package:app_perfomance/presentation/consts/keys.dart';
import 'package:app_perfomance/presentation/consts/routes.dart';
import 'package:app_perfomance/presentation/consts/translations.dart';
import 'package:app_perfomance/presentation/styles/text.dart';
import 'package:app_perfomance/presentation/ui/components/ui_app_bar.dart';
import 'package:app_perfomance/presentation/ui/components/ui_card.dart';
import 'package:app_perfomance/presentation/ui/components/ui_error_data.dart';
import 'package:app_perfomance/presentation/ui/components/ui_image_asset.dart';
import 'package:app_perfomance/presentation/ui/components/ui_loader.dart';
import 'package:app_perfomance/presentation/ui/components/ui_text.dart';

part 'components/ui_app_bar.dart';
part 'components/ui_grid_card.dart';
part 'components/ui_button_go_to.dart';
part 'components/ui_grid.dart';
part 'components/ui_list_card.dart';
part 'components/ui_list.dart';
part 'components/ui_view.dart';

class ScreenHotels extends StatelessWidget {
  const ScreenHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocHotels, BlocHotelsState>(
      builder: (_, state) => state.when(
        loading: () => const Scaffold(
          appBar: _UiAppBar(),
          body: UiLoader(),
        ),
        loaded: (hotels) => _UiView(hotels: hotels),
        error: (message) => Scaffold(
          appBar: const _UiAppBar(),
          body: UiErrorData(text: message),
        ),
      ),
    );
  }
}
