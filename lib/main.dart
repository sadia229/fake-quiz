import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:minimal_rest/minimal_rest.dart';

import 'app/domain/data/core/dependencyInjection/global_di_container.dart';
import 'app/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjectionContainer.init();
  MinRest.init("https://developer.quizmind.gamehubbd.com/api/v2.0");

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
