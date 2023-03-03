import 'package:get/get.dart';
import 'package:okan/data/data.dart';

class PostController extends GetxController {
  final PostRepo repo = PostRepo();

  static PostController get to => Get.find<PostController>();
  var counter = Rx<int>(0);
  // @override
  // onReady() async {
  //   super.onInit();

  //   await loadPosts();
  // }

  @override
  onInit() {
    ever(counter, (callback) {
      print('I called a callback $callback');
      return callback;
    });
    super.onInit();
  }

  countUp() {
    counter.value++;
    update();
  }

  Future<void> loadPosts() async {
    await repo.fetchAllPosts();
    
  }
}
