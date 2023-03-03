import 'package:get/get.dart';
import 'package:okan/controller/controller.dart';

Future<void> init() async {
  Get.lazyPut(() => PostController());
}