import './pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/dashboard/dashboard_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => MyDashBoard(),
          //  Inside above file is where all logic of routing is present but
          //  without following binding above one is useless bcz inside binding
          //  are all of my controllers are lazily-initialized.
          binding: DashBoardBinding(),
          //  The binding needs to be initialized inside "main.dart" file.
        ),
        //  With above code, we're doing getX & bottom nav-bar
        //  routing together.
      ],
      //  Without removing below code i will get null check error bcz now
      //  my "binding" and "page" property take controll of every-thing.
      //  home: MyDashBoard(),
    );
  }
}
