import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/ui/inherited_wrapper.dart';

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InheritedWrapperState state = InheritedWrapper.of(context);

    return Text('counter ${state.counter}');
  }
}
