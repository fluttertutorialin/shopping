import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/pages/home/homeController.dart';
import 'package:shopping/pages/home/widgets/singleProduct.dart';

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController _controller = Get.find();
    final double itemHeight = 190;
    final double itemWidth = Get.width / 2 - 100;

    return Obx(() {
      return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25.0,
          crossAxisSpacing: 25.0,
          childAspectRatio: itemWidth / itemHeight,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return SingleProduct(
              _controller.products.elementAt(index),
            );
          },
          childCount: _controller.products.length,
        ),
      );
    });
  }
}
