import 'package:clean_architecture_meal_monky/utlites/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/products_byCategory.dart';
import '../../controller/categoryProducts/category_products_bloc.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<CategoryProductsBloc, CategoryProductsState>(
      builder: (context, state) {
        List<CategoryProducts> myList = state.getProductsList;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: myList.length,
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
                          alignment: Alignment.bottomLeft,
                          height: height * .28,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.3),
                                BlendMode.srcATop,
                              ),
                              image: NetworkImage(myList[index].strMealThumb),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 21.0,
                                  top: 8,
                                ),
                                child: Text(
                                  myList[index].strMeal,
                                  style: const TextStyle(
                                    fontSize: 17,
                                  ),
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
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        softWrap: true,
                                        text: TextSpan(
                                          children: [
                                            const TextSpan(
                                              text: " (142 ratings) ",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                            ),
                                            TextSpan(
                                              text: title,
                                              style: const TextStyle(
                                                fontSize: 13,
                                              ),
                                            ),
                                            const TextSpan(
                                              text: " . ",
                                              style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 22,
                                              ),
                                            ),
                                            const TextSpan(
                                              text: " Western Food",
                                              style: TextStyle(
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
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
