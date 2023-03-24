// Flutter imports:
import 'package:app_perfomance/consts/routes.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/components/app_header.dart';
import 'package:app_perfomance/consts/translations.dart';

class HeaderHotels extends StatelessWidget implements PreferredSizeWidget {
  final bool? isListView;
  final VoidCallback? onSwitchView;

  const HeaderHotels({
    super.key,
    this.isListView,
    this.onSwitchView,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final checkIsListView = isListView == true;

    return AppHeader(
      title: labelHotels,
      actions: isListView != null
          ? [
              IconButton(
                icon: const Icon(
                  Icons.memory,
                  color: Colors.grey,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(routeMemoryLeaks),
              ),
              IconButton(
                icon: Icon(
                  Icons.list_rounded,
                  color: checkIsListView ? Colors.green : Colors.grey,
                ),
                onPressed: !checkIsListView ? onSwitchView : null,
              ),
              IconButton(
                icon: Icon(
                  Icons.apps_rounded,
                  color: !checkIsListView ? Colors.green : Colors.grey,
                ),
                onPressed: checkIsListView ? onSwitchView : null,
              ),
            ]
          : null,
    );
  }
}
