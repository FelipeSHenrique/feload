import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
  final Widget? child;

  const LayoutContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20
        ),
        child: child,
      ),
    );
  }
}
