// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_perfomance/presentation/styles/text.dart';

class UiRowData extends StatelessWidget {
  final String label, value;

  const UiRowData({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$label: ',
              style: getBrandTextStyle(fontWeight: FontWeight.w500),
            ),
            TextSpan(
              text: value,
              style: getBaseTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
