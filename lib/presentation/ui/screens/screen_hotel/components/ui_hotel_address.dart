part of '../screen_hotel.dart';

class _UiHotelAddress extends StatelessWidget {
  final ApiHotelAddress address;

  const _UiHotelAddress({
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    final city = address.city;
    final street = address.street;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UiRowData(
          label: labelsHotel[keyCountry]!,
          value: address.country,
        ),
        if (city != null && city.isNotEmpty)
          UiRowData(
            label: labelsHotel[keyCity]!,
            value: city,
          ),
        if (street != null && street.isNotEmpty)
          UiRowData(
            label: labelsHotel[keyStreet]!,
            value: street,
          ),
      ],
    );
  }
}
