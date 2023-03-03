import 'package:okan/models/post_model.dart';

import 'base_repo.dart';

class PostRepo extends BaseRepo {
  List<PostModel> allPosts = [];

  Future<void> fetchAllPosts() async {
    try {
      var response = await connect.get(
        '/postsa',
        headers: headers,
      );

      var result = handleResponse(response);

      print('RESULT BODY: ${result.runtimeType}');
    } catch (e) {
      print('APi: $e');
    }
  }
}
