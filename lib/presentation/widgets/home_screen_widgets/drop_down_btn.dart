import 'package:flutter/material.dart';


class CustomDropLocation extends StatelessWidget {
  const CustomDropLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 14.0),
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              'Current Location',
              style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
