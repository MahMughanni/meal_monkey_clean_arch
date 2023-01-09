import 'package:clean_architecture_meal_monky/core/services/services_locator.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/categoryProducts/category_products_bloc.dart';
import 'package:clean_architecture_meal_monky/presentation/shared_components/app_bar.dart';
import 'package:clean_architecture_meal_monky/presentation/shared_components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/details_screen_widget/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CategoryProductsBloc>()..add(CategoryProductsEvent(title!)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          title: title!,
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: SearchBar(),
            ),
            Expanded(
              child: ProductsDetails(
                title: title!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
