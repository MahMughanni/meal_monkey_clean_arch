import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/meal_category/meal_bloc.dart';
import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:clean_architecture_meal_monky/utlites/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/meal_category/meal_state.dart';

class HomePageTopItems extends StatelessWidget {
  const HomePageTopItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints c) {
        var height = MediaQuery.of(context).size.height;
        //
        // final width = c.maxWidth;
        // var fontSize = 16.0;
        // if (width <= 480) {
        //   fontSize = 16.0;
        // } else if (width > 480 && width <= 960) {
        //   fontSize = 22.0;
        // } else {
        //   fontSize = 28.0;
        // }
        return BlocBuilder<MealBloc, MealState>(
          buildWhen: (previous, current) =>
              previous.mealRequestState != current.mealRequestState,
          builder: (context, state) {
            switch (state.mealRequestState) {
              case RequestState.loading:
                return Container();
              case RequestState.loaded:
                return Container(
                  color: Theme.of(context).backgroundColor,
                  margin: const EdgeInsets.only(left: 0, top: 21),
                  height: height * .17,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: state.getAllCategory.length,
                    itemBuilder: (context, index) {
                      final mealList = state.getAllCategory[index];
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, NamedRoutes.detailsRoute,
                              arguments: mealList.strCategory);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 111,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        mealList.strCategoryThumb),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      Theme.of(context).secondaryHeaderColor),
                            ),
                            Text(
                              mealList.strCategory,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              case RequestState.error:
                return Container();
            }
          },
        );
      },
    );
  }
}
