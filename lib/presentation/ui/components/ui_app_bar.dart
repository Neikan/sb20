// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:app_perfomance/presentation/styles/text.dart';
import 'package:app_perfomance/presentation/utils/common.dart';

class UiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const UiAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  AppBar build(BuildContext context) {
    final brightness = getStatusBarBrightness();

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: brightness,
        statusBarBrightness: brightness,
      ),
      backgroundColor: Colors.white,
      title: Text(title, style: headerTextStyles),
      iconTheme: IconThemeData(color: Colors.grey[700]),
      leading: leading,
      actions: actions,
    );
  }
}
