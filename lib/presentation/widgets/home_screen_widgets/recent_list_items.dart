import 'package:flutter/material.dart';

import '../../../utlites/constants.dart';

class RecentListItems extends StatelessWidget {
  const RecentListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 8),
              padding: const EdgeInsets.all(4),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: NetworkImage(AppConstants.baseImageUrl),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mulberry Pizza by Josh',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    softWrap: true,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: " Cafe",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13,
                          ),
                        ),
                        const TextSpan(
                          text: ". ",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 22,
                          ),
                        ),
                        const TextSpan(
                          text: " Western Food",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 20,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        " (123 ratings)",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
      itemCount: 5,
    );
  }
}
