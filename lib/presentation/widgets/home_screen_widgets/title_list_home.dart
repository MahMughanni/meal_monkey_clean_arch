import 'package:clean_architecture_meal_monky/utlites/constants.dart';
import 'package:flutter/material.dart';

class TitleList extends StatelessWidget {
  const TitleList({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21.0, right: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              AppStrings.viewAll,
            ),
          ),
        ],
      ),
    );
  }
}
