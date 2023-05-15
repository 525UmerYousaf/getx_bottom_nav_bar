import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../add/add_controller.dart';

class UsersPage extends StatelessWidget {
  final AddController c = Get.put(AddController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Users Number",
                style: TextStyle(fontSize: 20),
              ),
              Divider(),
              Obx(
                () => Text(
                  "${c.counter}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
