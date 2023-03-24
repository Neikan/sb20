part of '../screen_hotels.dart';

class _UiGrid extends StatelessWidget {
  final List<ApiHotel> hotels;

  const _UiGrid({
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: const PageStorageKey(keyHotelsGrid),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
      ),
      itemCount: hotels.length,
      itemBuilder: (_, index) => _UiGridCard(
        hotel: hotels[index],
      ),
    );
  }
}
