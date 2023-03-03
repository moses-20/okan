import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okan/controller/controller.dart';
import 'package:okan/routes/route_path.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Okan App'),
      ),
      body: Column(
        children: [
          const Center(
            child: TextButton(
              onPressed: RoutePath.posts,
              child: Text('View Posts'),
            ),
          ),
          GetBuilder<PostController>(
            builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: controller.countUp,
                    child: const Text('Count Up'),
                  ),
                  Text('${controller.counter.value}')
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
