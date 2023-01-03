import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  final String title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
      title: title,
      style: textStyle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class BaseAppBar extends StatelessWidget {
  const BaseAppBar(
      {Key? key,
      required this.title,
      this.textStyle,
      this.height = 140,
      this.elevation = 0,
      this.style,
      this.action,
      this.bottom})
      : super(key: key);

  final String title;

  final double? height;
  final double? elevation;
  final TextStyle? style;
  final List<Widget>? action;
  final PreferredSizeWidget? bottom;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: true,
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: false,
      bottom: bottom,
      actions: action,
      backgroundColor: Colors.white,
      toolbarHeight: height,
      elevation: elevation,
      title: Text(
        title,
        style: textStyle ??
            const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
