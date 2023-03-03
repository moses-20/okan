import 'package:get/get.dart';
import 'package:okan/views/views.dart';

import 'route_base.dart';

class RouteView extends RouteBase {
  static List<GetPage> pages = [
    GetPage(
      name: RouteBase.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: RouteBase.posts,
      page: () => const PostsView(),
    ),
    GetPage(
      name: RouteBase.post,
      page: () {
        String postId = Get.parameters['id'] ?? '';

        if (postId.isEmpty) {
          return const PostsView();
        }

        return PostView(post: postId);
      },
    ),
    GetPage(
      name: RouteBase.error,
      page: () {
        String code = Get.parameters['code']!;
        String name = Get.parameters['name']!;
        String message = Get.parameters['message']!;

        return ErrorView(code: code, name: name, message: message);
      },
    )
  ];
}
