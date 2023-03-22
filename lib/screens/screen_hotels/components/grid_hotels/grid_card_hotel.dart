// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/components/app_card.dart';
import 'package:app_perfomance/components/app_image_asset.dart';
import 'package:app_perfomance/components/app_text.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/screens/screen_hotels/components/button_go_to.dart';

class GridCardHotel extends StatelessWidget {
  final ApiHotel hotel;

  const GridCardHotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppImageAsset(image: hotel.poster),
          Flexible(
            child: AppText(
              text: hotel.name,
              textAlign: TextAlign.center,
            ),
          ),
          ButtonGoTo(hotel: hotel)
        ],
      ),
    );
  }
}
