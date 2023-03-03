import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okan/routes/routes.dart';

import 'init.dart';

void main() async {
  await init();
  runApp(const Okan());
}

class Okan extends StatelessWidget {
  const Okan({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: const Key('material_app'),
      title: 'Okan App',
      initialRoute: RouteBase.home,
      getPages: RouteView.pages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
