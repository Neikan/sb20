part of '../screen_hotels.dart';

class _UiGridCard extends StatelessWidget {
  final ApiHotel hotel;

  const _UiGridCard({
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
          _UiButtonGoTo(hotel: hotel)
        ],
      ),
    );
  }
}
