import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar(
      {required this.title,
      Key? key,
      this.height,
      this.elevation,
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
      elevation: elevation ?? 0,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
