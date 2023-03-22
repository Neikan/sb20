// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/components/app_card.dart';
import 'package:app_perfomance/components/app_image_asset.dart';
import 'package:app_perfomance/components/app_text.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/screens/screen_hotels/components/button_go_to.dart';

class ListCardHotel extends StatelessWidget {
  final ApiHotel hotel;

  const ListCardHotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppImageAsset(
            image: hotel.poster,
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: AppText(
                  text: hotel.name,
                  withOverflow: true,
                ),
              ),
              ButtonGoTo(
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
