import 'package:clean_architecture_meal_monky/core/services/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utlites/enums.dart';
import '../controller/meal_category/meal_bloc.dart';
import '../controller/meal_category/meal_event.dart';
import '../controller/meal_category/meal_state.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key, required this.titel}) : super(key: key);

  final String titel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MealBloc>()..add(GetAllCategoryEvent()),
      child: const Scaffold(
        body: CustomWidget(),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealBloc, MealState>(
      builder: (context, state) {
        switch (state.mealRequestState) {
          case RequestState.loading:
            return Container();
          case RequestState.loaded:
            return Center(
              child: Text(state.errorMessage),
            );
          case RequestState.error:
            return Container();
        }
      },
    );
  }
}
