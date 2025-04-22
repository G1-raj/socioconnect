import 'package:flutter/material.dart';
import 'package:socioconnect/constants.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: appTheme,

      appBar: AppBar(
        backgroundColor: appTheme,
        title: Text("Chat", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),

        centerTitle: true,

        leading: Icon(Icons.arrow_back_ios, color: Colors.white,),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 8),
              child: userDetailOnChat("Tanu Grewal"),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18.0),
                    topLeft: Radius.circular(18.0),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: [
                    chatBubble("Hey, how are you?", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                    chatBubble("I'm good! What about you?", false),
                    chatBubble("Let's catch up later.", true),
                   
                    // More messages...
                  ],
                ),
              ),
            ),

            // 👇 Message Input Area
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type your message...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: appTheme,
                    child: IconButton(
                      icon: Icon(Icons.send, color: Colors.white),
                      onPressed: () {
                        // TODO: Handle message send
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

  Widget chatBubble(String message, bool isSender) {
  return Align(
    alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: isSender ? appTheme : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        message,
        style: TextStyle(
          color: isSender ? Colors.white : Colors.black87,
        ),
      ),
    ),
  );
}


  Widget userDetailOnChat(String userName) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ68xCJyjzwUC0J89fXPOkmIvW09vTZjHRkVg&s"),
        ),

        const SizedBox(width: 14,),

        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(userName, style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
        ),

        Spacer(),

        CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromRGBO(37, 95, 76, 1),
          child: Icon(Icons.call_outlined, color: Color.fromRGBO(255, 255, 255, 1),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Color.fromRGBO(37, 95, 76, 1),
            child: Icon(Icons.video_call_outlined, color: Color.fromRGBO(255, 255, 255, 1),),
          ),
        ),
      ],
    );
  }
}