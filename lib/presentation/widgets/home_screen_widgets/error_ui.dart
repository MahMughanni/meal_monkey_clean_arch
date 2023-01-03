import 'package:flutter/material.dart';

class ErrorUI extends StatelessWidget {
  const ErrorUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage('images/error_image.png'),
              width: 125.0,
              height: 125.0,
            ),
          ),
          Text(
            'Empty',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
