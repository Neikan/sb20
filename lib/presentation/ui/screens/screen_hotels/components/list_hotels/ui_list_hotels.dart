// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/presentation/consts/keys.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/list_hotels/ui_list_card_hotel.dart';

class UiListHotels extends StatelessWidget {
  final List<ApiHotel> hotels;

  const UiListHotels({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const PageStorageKey(keyHotelsList),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: hotels.length,
      itemBuilder: (_, index) => UiListCardHotel(
        hotel: hotels[index],
      ),
    );
  }
}
