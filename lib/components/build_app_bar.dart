import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildAppBar {
  static AppBar build() {
    return AppBar(
      title: SvgPicture.asset('assets/image/logo.svg'),
    );
  }
}