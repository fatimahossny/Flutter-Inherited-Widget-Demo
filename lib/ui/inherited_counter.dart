import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/ui/inherited_wrapper.dart';

class InheritedCounter extends InheritedWidget {
  const InheritedCounter(
      {Key? key,
      required Widget child,
      required this.wrapperState,
      required this.counter})
      : super(key: key, child: child);

  final int counter;
  final InheritedWrapperState wrapperState;

  static InheritedCounter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return oldWidget.counter != counter;
  }
}
