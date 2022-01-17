import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/ui/inherited_counter.dart';

class InheritedWrapper extends StatefulWidget {
  const InheritedWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  static InheritedWrapperState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedCounter>())!
        .wrapperState;
  }

  @override
  InheritedWrapperState createState() => InheritedWrapperState();
}

class InheritedWrapperState extends State<InheritedWrapper> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      child: widget.child,
      counter: counter,
      wrapperState: this,
    );
  }
}
