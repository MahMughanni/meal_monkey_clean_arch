import 'package:flutter/material.dart';

class CustomFloatingBtn extends StatelessWidget {
  const CustomFloatingBtn(
      {Key? key, required this.onBtnPressed, required this.color})
      : super(key: key);

  final Function() onBtnPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 72,
        width: 72,
        child: FloatingActionButton(
          backgroundColor: color,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Home',
          elevation: 10,
          onPressed: onBtnPressed,
          child: const Icon(
            Icons.home,
            size: 40,
          ),
        ),
      ),
    );
  }
}
