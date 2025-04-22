import 'package:flutter/material.dart';

class FollowBar extends StatelessWidget {
  const FollowBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         
         followBarColumn("256", "Following"),

          VerticalDivider(),

         followBarColumn("45K", "Followers"),

          VerticalDivider(),

          followBarColumn("100", "Posts"),
        ],
      ),
    );
  }

  Widget followBarColumn(String count, String label) {
    return Column(
      children: [
        Text(count, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontWeight: FontWeight.bold
        ),),
        Text(label)
      ],
    );
  }
}