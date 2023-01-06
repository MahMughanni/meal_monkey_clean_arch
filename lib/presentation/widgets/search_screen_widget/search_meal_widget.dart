import 'package:clean_architecture_meal_monky/core/services/services_locator.dart';
import 'package:clean_architecture_meal_monky/domain/entities/search.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/search/meals_shows_search_bloc.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/search/meals_shows_search_event.dart';
import 'package:clean_architecture_meal_monky/utlites/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../utlites/enums.dart';

class SearchUser extends SearchDelegate<String> {
  SearchUser()
      : super(
            textInputAction: TextInputAction.search,
            searchFieldStyle:
                const TextStyle(fontWeight: FontWeightConstants.light ,fontSize: 16));

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_outlined),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    String title = query.toString().toLowerCase();

    return BlocProvider(
      create: (context) => getIt<MealsShowsSearchBloc>()
        ..add(MealShowsSearchEvent(mealTitle: title)),
      child: BlocBuilder<MealsShowsSearchBloc, SearchState>(
        buildWhen: (previous, current) =>
            previous.mealRequestState != current.mealRequestState,
        builder: (context, state) {
          var meals = state.getMealByNameList;
          switch (state.mealRequestState) {
            case RequestState.loading:
              return const Center(child: CircularProgressIndicator());
            case RequestState.loaded:
              if (query.isEmpty) {
                return const Center(
                  child: Text(AppStrings.searchNothingFound),
                );
              }
              return ShowMeals(meals: meals);

            case RequestState.error:
              meals = [];
              return const Center(
                child: Text(AppStrings.searchNothingFound),
              );
          }
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    String title = query.toString().toLowerCase();
    return BlocProvider(
      create: (context) => getIt<MealsShowsSearchBloc>()
        ..add(MealShowsSearchEvent(mealTitle: title)),
      child: BlocBuilder<MealsShowsSearchBloc, SearchState>(
        buildWhen: (previous, current) =>
            previous.mealRequestState != current.mealRequestState,
        builder: (context, state) {
          var meals = state.getMealByNameList
              .where(
                  (element) => element.strMeal.toLowerCase().startsWith(title))
              .toList();

          switch (state.mealRequestState) {
            case RequestState.loading:
              return const Center(child: CircularProgressIndicator());
            case RequestState.loaded:
              if (query.isEmpty) {
                return const Center(
                  child: Text(AppStrings.searchNothingFound),
                );
              }

              return ShowMeals(meals: meals);

            case RequestState.error:
              return Container();
          }
        },
      ),
    );
  }
}

class ShowMeals extends StatelessWidget {
  const ShowMeals({Key? key, required this.meals}) : super(key: key);
  final List<Search> meals;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: meals.length,
      itemBuilder: (BuildContext context, int index) {
        var myList = meals[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(myList.strMealThumb),
                    fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15)),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Colors.black.withOpacity(.4),
                ),
                alignment: Alignment.bottomCenter,
                height: 30,
                width: double.infinity,
                child: Text(
                  myList.strMeal,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                )),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 8),
    );
  }
}
