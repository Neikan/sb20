// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/consts/keys.dart';
import 'package:app_perfomance/consts/routes.dart';
import 'package:app_perfomance/consts/translations.dart';
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/styles/text.dart';

class ButtonGoTo extends StatelessWidget {
  final ApiHotel hotel;
  final bool? isListView;

  const ButtonGoTo({
    super.key,
    required this.hotel,
    this.isListView,
  });

  @override
  Widget build(BuildContext context) {
    final height = isListView == true ? 56.0 : 32.0;

    final padding = isListView == true
        ? const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          )
        : null;

    final button = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 32,
        maxHeight: height,
      ),
      child: Container(
        padding: padding,
        child: TextButton(
          onPressed: () {
            final arguments = {keyHotel: hotel};

            Navigator.of(context).pushNamed(
              routeHotel,
              arguments: arguments,
            );
          },
          style: _getButtonStyle(),
          child: Text(
            labelButtonGoTo,
            style: getBaseTextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );

    if (isListView == true) return button;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      ),
      child: button,
    );
  }

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.green,
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        Colors.green.shade700,
      ),
      minimumSize: isListView == true
          ? null
          : MaterialStateProperty.all<Size>(
              const Size(double.infinity, 16),
            ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
      ),
    );
  }
}
