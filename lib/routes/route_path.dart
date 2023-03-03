import 'package:get/get.dart';

import 'route_base.dart';

class RoutePath extends RouteBase {
  static goTo(String route) => Get.toNamed(route);

  static home() => Get.toNamed(RouteBase.home);
  static posts() => Get.toNamed(RouteBase.posts);
  static post(String id) => Get.toNamed(RouteBase.post, parameters: {'id': id});

  static error({required String code, required String name, required String message}) {
    return Get.toNamed(
      RouteBase.error,
      parameters: {
        'code': code,
        'name': name,
        'message': message,
      },
    );
  }
}
