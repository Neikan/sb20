part of '../screen_hotel.dart';

class _UiHotelServices extends StatelessWidget {
  final ApiHotelServices services;

  const _UiHotelServices({
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    if (services.free.isEmpty && services.paid.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
          child: Text(
            labelsHotel[keyServices]!,
            style: getBrandTextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _UiServicesList(
              label: labelsHotel[keyPaid]!,
              services: services.paid,
            ),
            _UiServicesList(
              label: labelsHotel[keyFree]!,
              services: services.free,
            ),
          ],
        )
      ],
    );
  }
}
