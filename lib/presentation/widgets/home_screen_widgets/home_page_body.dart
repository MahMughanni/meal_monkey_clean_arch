import 'package:clean_architecture_meal_monky/core/services/services_locator.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/meal_category/meal_bloc.dart';
import 'package:clean_architecture_meal_monky/presentation/shared_components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../controller/meal_category/meal_event.dart';
import '../../shared_components/app_bar.dart';
import 'header_top_list.dart';
import 'most_popular_list_item.dart';
import 'popular_list_item.dart';
import 'recent_list_items.dart';
import 'drop_down_btn.dart';
import 'title_list_home.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<MealBloc>()..add(GetAllCategoryEvent());
      },
      lazy: false,
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Good Morning! Meal Monkey',
        ),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TopText(),
                CustomDropLocation(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: SearchBar(),
                ),
                HomePageTopItems(),
                TitleList(title: 'Popular Restaurants'),
                PopularListItems(),
                TitleList(title: 'Most Popular'),
                MostPopularListItems(),
                TitleList(title: 'Recent Items'),
                RecentListItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopText extends StatelessWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21.0, top: 21),
      child: Text(
        'Delivering to ',
        style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 12,
        ),
      ),
    );
  }
}
