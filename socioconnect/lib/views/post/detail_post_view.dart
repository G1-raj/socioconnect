import 'package:flutter/material.dart';
import 'package:socioconnect/constants.dart';

class DetailPostView extends StatelessWidget {
  const DetailPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(255, 255, 255, 1),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.arrow_back_ios, color: appTheme,),
        ),

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.more_vert),
            ),
          )
        ],
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.55,
                child: Image(
                  image: NetworkImage("https://rukminim2.flixcart.com/image/850/1000/kpcy5jk0/poster/h/c/w/large-village-poster-scenery-scenrym-68-original-imag3m8vrkdztzva.jpeg?q=20&crop=false"),
                  fit: BoxFit.cover,
                ),
              ),

              // const SizedBox(height: 8,),

              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border, size: 26,),
                    onPressed: () {
                      // Handle like button press
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.comment, size: 26,),
                    onPressed: () {
                      // Handle comment button press
                    },
                  ),
              
                  Spacer(),
              
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      icon: Icon(Icons.bookmark_border, size: 26,),
                      onPressed: () {
                        // Handle save button press
                      },
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}