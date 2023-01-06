import 'package:clean_architecture_meal_monky/utlites/global/theme/app_color/app_color_light.dart';
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
          onPressed: onBtnPressed,
          child: Theme(
            data: ThemeData(
              iconTheme: const IconThemeData(
                color: Colors.white,
                size: 40,
              ),
            ),
            child: const Icon(
              Icons.home,
            ),
          ),
        ),
      ),
    );
  }
}
