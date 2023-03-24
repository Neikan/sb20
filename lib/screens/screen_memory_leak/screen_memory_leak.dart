// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemoryLeakObject {
  final String text;

  MemoryLeakObject(this.text);
}

List<MemoryLeakObject> leakObjects = [];

class ScreenMemoryLeaks extends StatelessWidget {
  const ScreenMemoryLeaks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          child: const Text(
            'Create memory leaks',
          ),
          onPressed: () {
            while (leakObjects.length < 1000000000) {
              leakObjects.add(
                MemoryLeakObject('Count: ${leakObjects.length}'),
              );
            }
          },
        ),
      ),
    );
  }
}
