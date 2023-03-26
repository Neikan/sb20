part of '../screen_hotels.dart';

class _UiList extends StatelessWidget {
  final List<ApiHotel> hotels;

  const _UiList({
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const PageStorageKey(keyHotelsList),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: hotels.length,
      itemBuilder: (_, index) => _UiListCard(
        hotel: hotels[index],
      ),
    );
  }
}
