// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/presentation/consts/keys.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/grid_hotels/ui_grid_card_hotel.dart';

class UiGridHotels extends StatelessWidget {
  final List<ApiHotel> hotels;

  const UiGridHotels({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: const PageStorageKey(keyHotelsGrid),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
      ),
      itemCount: hotels.length,
      itemBuilder: (_, index) => UiGridCardHotel(
        hotel: hotels[index],
      ),
    );
  }
}
