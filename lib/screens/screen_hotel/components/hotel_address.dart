// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/components/app_row_data.dart';
import 'package:app_perfomance/consts/keys.dart';
import 'package:app_perfomance/consts/translations.dart';
import 'package:app_perfomance/models/api_hotel_detailed/submodels/api_hotel_address.dart';

class HotelAddress extends StatelessWidget {
  final ApiHotelAddress address;

  const HotelAddress({
    super.key,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    final city = address.city;
    final street = address.street;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppRowData(
          label: labelsHotel[keyCountry]!,
          value: address.country,
        ),
        if (city != null && city.isNotEmpty)
          AppRowData(
            label: labelsHotel[keyCity]!,
            value: city,
          ),
        if (street != null && street.isNotEmpty)
          AppRowData(
            label: labelsHotel[keyStreet]!,
            value: street,
          ),
      ],
    );
  }
}
