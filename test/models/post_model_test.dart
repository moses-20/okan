import 'package:flutter_test/flutter_test.dart';
import 'package:okan/models/post_model.dart';

void main() {
  test('PostModel', () {
    final postModel = PostModel(
      id: 1,
      title: 'Something good',
      body: "Aliqua dolore incididunt irure quis.",
      userId: 0949,
    );

    final asJson = <String, dynamic>{
      'id': 1,
      'title': 'Something good',
      'body': "Aliqua dolore incididunt irure quis.",
      'userId': 0949
    };

    // print(postModel.toString());
    // print(PostModel.fromJson(asJson).toString());

    expect(postModel.id, 1);
    expect(postModel.title, 'Something good');
    expect(postModel.toJson(), asJson);
    expect(PostModel.fromJson(asJson).id, postModel.id);
    expect(PostModel.fromJson(asJson).title, postModel.title);
    expect(PostModel.fromJson(asJson).body, postModel.body);
    expect(PostModel.fromJson(asJson).userId, postModel.userId);
  });
}
