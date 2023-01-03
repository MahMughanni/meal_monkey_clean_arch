import 'package:clean_architecture_meal_monky/utlites/constants.dart';
import 'package:flutter/material.dart';

class PopularListItems extends StatelessWidget {
  const PopularListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                margin: const EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * .28,
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
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
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 21.0,
                        top: 8,
                      ),
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
                                    text: " (142 ratings )",
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 13,
                                    ),
                                  ),
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
            itemCount: 2,
          ),
        ),
      ],
    );
  }
}
