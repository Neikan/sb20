// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/components/app_header.dart';
import 'package:app_perfomance/components/app_text.dart';
import 'package:app_perfomance/consts/keys.dart';
import 'package:app_perfomance/consts/translations.dart';

class ScreenNotFound extends StatelessWidget {
  const ScreenNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: labelsNotFound[keyTitle]!,
      ),
      body: SafeArea(
        child: Center(
          child: AppText(
            text: labelsNotFound[keyContent]!,
          ),
        ),
      ),
    );
  }
}
