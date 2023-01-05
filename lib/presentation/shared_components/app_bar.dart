import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class BaseAppBar extends StatelessWidget {
  const BaseAppBar(
      {Key? key,
      required this.title,
      this.height = 140,
      this.elevation = 0,
      this.action,
      this.bottom})
      : super(key: key);

  final String title;
  final double? height;
  final double? elevation;
  final List<Widget>? action;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: true,
      bottom: bottom,
      actions: action,
      toolbarHeight: height,
      elevation: elevation,
      title: Text(title),
    );
  }
}
