import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/ui/inherited_wrapper.dart';

class UpdateCounterWidget extends StatelessWidget {
  const UpdateCounterWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          InheritedWrapperState wrapper = InheritedWrapper.of(context);
          wrapper.incrementCounter();
        },
        child: const Text("Increment"));
  }
}
