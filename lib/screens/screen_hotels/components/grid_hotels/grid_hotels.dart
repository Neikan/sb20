// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/consts/keys.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/screens/screen_hotels/components/grid_hotels/grid_card_hotel.dart';

class GridHotels extends StatelessWidget {
  final List<ApiHotel> hotels;

  const GridHotels({
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
      itemBuilder: (_, index) => GridCardHotel(
        hotel: hotels[index],
      ),
    );
  }
}
