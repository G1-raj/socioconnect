import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// import 'package:socioconnect/views/chat/chat_list_view.dart';
// import 'package:socioconnect/views/chat/chat_view.dart';
import 'package:socioconnect/views/home/home_view.dart';
import 'package:socioconnect/views/page_controller/page_controller_widget.dart';
// import 'package:socioconnect/views/search/search_view.dart';
// import 'package:socioconnect/views/profile/profile_view.dart';
// import 'package:socioconnect/views/settings/settings_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageControllerWidget()
    );
  }
}