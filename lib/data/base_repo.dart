import 'package:get/get.dart';
import 'package:okan/routes/routes.dart';

class BaseRepo extends GetConnect {
  final GetConnect connect = GetConnect()
    ..baseUrl = "https://jsonplaceholder.typicode.com";

  Map<String, String> get headers {
    return {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };
  }

  set headers(Map<String, String> data) {
    headers.addAll(data);
  }

  handleResponse(Response<dynamic> response) {
    if (response.statusCode == 500) {
      _handleServerError();
    }

    if (response.statusCode == 400) {
      _handleClientError();
    }

    if (response.body.runtimeType.toString() == '_Map<String, dynamic>') {
      _handleClientError();
    }

    return response.body;
  }

  _handleServerError() {
    RoutePath.error(
      code: '500',
      name: 'Server Error',
      message: 'We could not connect at this time',
    );
  }

  _handleClientError() {
    RoutePath.error(
      code: '400',
      name: 'Client Error',
      message: 'We could not connect at this time',
    );
  }
}
