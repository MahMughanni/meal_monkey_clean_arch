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
            style: Theme.of(context).textTheme.headline6,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'View all',
              style: TextStyle(color: Colors.amber, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
