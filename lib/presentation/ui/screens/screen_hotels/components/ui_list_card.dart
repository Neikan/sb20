part of '../screen_hotels.dart';

class _UiListCard extends StatelessWidget {
  final ApiHotel hotel;

  const _UiListCard({
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
              _UiButtonGoTo(
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
