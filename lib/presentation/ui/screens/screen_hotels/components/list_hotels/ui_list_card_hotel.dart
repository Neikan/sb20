// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/presentation/ui/components/ui_card.dart';
import 'package:app_perfomance/presentation/ui/components/ui_image_asset.dart';
import 'package:app_perfomance/presentation/ui/components/ui_text.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/ui_button_go_to.dart';

class UiListCardHotel extends StatelessWidget {
  final ApiHotel hotel;

  const UiListCardHotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return UiCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiImageAsset(
            image: hotel.poster,
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: UiText(
                  text: hotel.name,
                  withOverflow: true,
                ),
              ),
              UiButtonGoTo(
                hotel: hotel,
                isListView: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
