part of '../screen_hotels.dart';

class _UiView extends StatefulWidget {
  final List<ApiHotel> hotels;

  const _UiView({
    required this.hotels,
  });

  @override
  State<_UiView> createState() => _UiViewState();
}

class _UiViewState extends State<_UiView> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _UiAppBar(
          isListView: isListView,
          onSwitchView: _handleSwitchView,
        ),
        body: isListView
            ? _UiList(hotels: widget.hotels)
            : _UiGrid(hotels: widget.hotels));
  }

  void _handleSwitchView() {
    setState(() {
      isListView = !isListView;
    });
  }
}
