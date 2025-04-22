import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socioconnect/constants.dart';
import 'package:socioconnect/views/utilities/add_post_view.dart';
import 'package:socioconnect/widgets/post_card/post_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text("socioconnect", style: TextStyle(
          color: appTheme,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: false,

        actions: [
          IconButton(
            onPressed: () {
              Get.to(AddPostView());
            },
            icon: Icon(Icons.add, color: Colors.black,)
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Icon(Icons.notifications_outlined, color: Colors.black,),
          )
        ],
      ),

      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: 18,
            itemBuilder: (context, index) {
              return PostCard();
            },
          )
        ),
      ),
    );
  }
}