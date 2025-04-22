import 'package:flutter/material.dart';
import 'package:socioconnect/constants.dart';
import 'package:socioconnect/widgets/all_post_section/all_post_section.dart';
import 'package:socioconnect/widgets/follow_bar/follow_bar.dart';
import 'package:socioconnect/widgets/profile_card/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(255, 255, 255, 1),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: Icon(Icons.arrow_back_ios, color: appTheme,),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings_outlined, color: appTheme,),
          )
        ],
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ProfileCard(
                isSelf: true,
              ),

              const SizedBox(height: 12,),

              FollowBar(),

              const SizedBox(height: 12,),

              Expanded(
                child: AllPostSection(),
              )
            ],
          ),
        ),
      ),
    );
  }
}