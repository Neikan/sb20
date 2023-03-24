// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

// Project imports:
import 'package:app_perfomance/consts/urls.dart';

class HotelPhotos extends StatelessWidget {
  final List<String> photos;

  const HotelPhotos({
    super.key,
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
