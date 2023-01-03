import 'package:flutter/material.dart';

import '../../../utlites/constants.dart';


class MostPopularListItems extends StatelessWidget {
  const MostPopularListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 280,
      color: Colors.white,
      child: ListView.builder(
        // physics: const ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 21.0, top: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                    image:  const DecorationImage(
                      image: NetworkImage(AppConstants.baseImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 21.0,
                    top: 8,
                  ),
                  child: Text(
                    'Minute by tuk tuk',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0, top: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 20,
                      ),
                      const Text(
                        "4.9",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 13,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RichText(
                          textAlign: TextAlign.center,
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }
}
