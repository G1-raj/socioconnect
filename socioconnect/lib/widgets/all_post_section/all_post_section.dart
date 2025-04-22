import 'package:flutter/material.dart';

class AllPostSection extends StatelessWidget {
  const AllPostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
               color: Colors.red,
            ),
           
          ),
        );
      },
    );
  }
}