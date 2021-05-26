import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/models/categoryModel.dart';
import 'package:shopping/pages/home/homeController.dart';
import 'package:shopping/pages/home/widgets/singleCategory.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // call the home controller
    final HomeController _controller = Get.find();

    return Obx(() {
      return SizedBox(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 50),
          itemCount: _controller.categories.length,
          itemBuilder: (_, index) {
            CategoryModel category = _controller.categories.elementAt(index);
            return Obx(() {
              return SingleCategory(
                category,
                category == _controller.selectedCategory,
              );
            });
          },
        ),
      );
    });
  }
}
