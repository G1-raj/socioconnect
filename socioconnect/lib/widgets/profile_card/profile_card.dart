import 'package:flutter/material.dart';
import 'package:socioconnect/constants.dart';

class ProfileCard extends StatelessWidget {
  final bool isSelf;
  const ProfileCard({super.key, this.isSelf = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,

      child: Row(
        children: [
         SizedBox(
            height: double.infinity,
            width: MediaQuery.of(context).size.width * 0.4,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(5), // thickness of the border
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: appTheme, // your theme color
                    width: 4,        // border thickness
                  ),
                ),
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 12,),

      
          Expanded(
            child: SizedBox(
              height: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name of user", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 21
                  ),),

                  isSelf ? 
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appTheme
                    ),
                    child: Text("Edit", style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.bold
                    ),),
                  ) : Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appTheme
                        ),
                        child: Text("Follow", style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      const SizedBox(width: 8,),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appTheme,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                        child: Icon(Icons.message_outlined, color: Color.fromRGBO(255, 255, 255, 1),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}