// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/consts/keys.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/screens/screen_hotels/components/list_hotels/list_card_hotel.dart';

class ListHotels extends StatelessWidget {
  final List<ApiHotel> hotels;

  const ListHotels({
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
      itemBuilder: (_, index) => ListCardHotel(
        hotel: hotels[index],
      ),
    );
  }
}
