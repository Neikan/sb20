// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/models/api_hotel.dart';
import 'package:app_perfomance/screens/screen_hotels/components/grid_hotels/grid_hotels.dart';
import 'package:app_perfomance/screens/screen_hotels/components/header_hotels.dart';
import 'package:app_perfomance/screens/screen_hotels/components/list_hotels/list_hotels.dart';

class ViewHotels extends StatefulWidget {
  final List<ApiHotel> hotels;

  const ViewHotels({
    super.key,
    required this.hotels,
  });

  @override
  State<ViewHotels> createState() => _ViewHotelsState();
}

class _ViewHotelsState extends State<ViewHotels> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderHotels(
          isListView: isListView,
          onSwitchView: _handleSwitchView,
        ),
        body: isListView
            ? ListHotels(hotels: widget.hotels)
            : GridHotels(hotels: widget.hotels));
  }

  void _handleSwitchView() {
    setState(() {
      isListView = !isListView;
    });
  }
}
