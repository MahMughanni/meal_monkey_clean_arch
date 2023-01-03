import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/meal_category/meal_bloc.dart';
import 'package:clean_architecture_meal_monky/presentation/screens/deitals_screen.dart';
import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:clean_architecture_meal_monky/utlites/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/meal_category/meal_state.dart';

class HomePageTopItems extends StatelessWidget {
  const HomePageTopItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<MealBloc, MealState>(
      buildWhen: (previous, current) =>
          previous.mealRequestState != current.mealRequestState,
      builder: (context, state) {
        switch (state.mealRequestState) {
          case RequestState.loading:
            return Container();
          case RequestState.loaded:
            return Container(
              margin: const EdgeInsets.only(left: 0, top: 21),
              color: Colors.white,
              height: height * .19,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: state.getAllCategory.length,
                itemBuilder: (context, index) {
                  final mealList = state.getAllCategory[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, NamedRoutes.detailsRoute, arguments: mealList.strCategory);
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
                              color: Colors.grey.shade100),
                        ),
                        Text(
                          mealList.strCategory,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
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
  }
}
