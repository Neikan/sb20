part of '../screen_hotel.dart';

class _UiHotelPhotos extends StatelessWidget {
  final List<String> photos;

  const _UiHotelPhotos({
    required this.photos,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: false,
          aspectRatio: 2.0,
        ),
        items: photos
            .map(
              (image) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        '$localUrlImage$image',
                        fit: BoxFit.cover,
                        width: 300,
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
