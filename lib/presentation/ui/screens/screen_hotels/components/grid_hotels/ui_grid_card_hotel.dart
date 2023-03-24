// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/presentation/ui/components/ui_card.dart';
import 'package:app_perfomance/presentation/ui/components/ui_image_asset.dart';
import 'package:app_perfomance/presentation/ui/components/ui_text.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/ui_button_go_to.dart';

class UiGridCardHotel extends StatelessWidget {
  final ApiHotel hotel;

  const UiGridCardHotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return UiCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UiImageAsset(image: hotel.poster),
          Flexible(
            child: UiText(
              text: hotel.name,
              textAlign: TextAlign.center,
            ),
          ),
          UiButtonGoTo(hotel: hotel)
        ],
      ),
    );
  }
}
