import 'package:flutter/material.dart';

import '../../../utlites/constants.dart';
import '../../../utlites/global/theme/app_color/app_color_light.dart';

class MostPopularListItems extends StatelessWidget {
  const MostPopularListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
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
                    image: const DecorationImage(
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
                      const Icon(Icons.star),
                      Text(
                        "4.9",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: AppColorLight.primaryColor),
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
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              TextSpan(
                                text: ". ",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                        color: AppColorLight.primaryColor),
                              ),
                              TextSpan(
                                text: " Western Food",
                                style: Theme.of(context).textTheme.headline6,
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
