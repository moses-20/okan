import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okan/controller/posts_controller.dart';
import 'package:okan/routes/routes.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: GetBuilder<PostController>(
        builder: (controller) {
          return Center(
            child: TextButton(
              // onPressed: _viewPost,
              onPressed: controller.loadPosts,
              child: const Text('View Post'),
            ),
          );
        },
      ),
    );
  }

  void _viewPost() {
    RoutePath.post('1');
  }
}
