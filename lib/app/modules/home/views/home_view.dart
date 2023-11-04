import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        elevation: 0,
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          Obx(() {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final category = controller.categories[index];
                  return ListTile(
                    title: Text(category.name ?? ''),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                  );
                },
                childCount: controller.categories.length,
              ),
            );
          }),
        ],
      ),
    );
  }
}
