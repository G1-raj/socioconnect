import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ68xCJyjzwUC0J89fXPOkmIvW09vTZjHRkVg&s",
            ),
          ),
          title: Row(
            children: [
              Text(
                "User name",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "9 minutes",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          subtitle: Text(
            "Message of the user goes here",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Divider(height: 1, color: Colors.grey.shade300),
      ],
    );
  }
}
