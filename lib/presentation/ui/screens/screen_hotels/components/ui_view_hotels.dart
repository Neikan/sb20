// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/grid_hotels/ui_grid_hotels.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/list_hotels/ui_list_hotels.dart';
import 'package:app_perfomance/presentation/ui/screens/screen_hotels/components/ui_app_bar_hotels.dart';

class UiViewHotels extends StatefulWidget {
  final List<ApiHotel> hotels;

  const UiViewHotels({
    super.key,
    required this.hotels,
  });

  @override
  State<UiViewHotels> createState() => _UiViewHotelsState();
}

class _UiViewHotelsState extends State<UiViewHotels> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UiAppBarHotels(
          isListView: isListView,
          onSwitchView: _handleSwitchView,
        ),
        body: isListView
            ? UiListHotels(hotels: widget.hotels)
            : UiGridHotels(hotels: widget.hotels));
  }

  void _handleSwitchView() {
    setState(() {
      isListView = !isListView;
    });
  }
}
