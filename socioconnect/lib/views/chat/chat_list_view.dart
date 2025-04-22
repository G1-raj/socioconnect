import 'package:flutter/material.dart';
import 'package:socioconnect/widgets/chat_card/chat_card.dart';
import 'package:socioconnect/widgets/search_bar/search_bar_widget.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(255, 255, 255, 1),

      appBar: AppBar(
        title: Text("Message", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),

        centerTitle: false,
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SearchBarWidget(),

              const SizedBox(height: 12,),

              ChatCard(),
              ChatCard(),
              ChatCard(),
              ChatCard(),
              ChatCard(),
            ],
          ),
        ),
      ),
    );
  }
}