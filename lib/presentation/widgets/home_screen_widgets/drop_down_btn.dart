import 'package:clean_architecture_meal_monky/utlites/global/theme/app_color/app_color_light.dart';
import 'package:flutter/material.dart';

class CustomDropLocation extends StatelessWidget {
  const CustomDropLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String firstValue = 'Current location';
    var items = [
      firstValue,
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DropdownButton(
          underline: const SizedBox(),
          value: firstValue,
          icon: const Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: AppColorLight.primaryColor,
            ),
          ),
          onChanged: (v) {},
          items: items
              .map((String items) => DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
