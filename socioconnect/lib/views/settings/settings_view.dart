import 'package:flutter/material.dart';
import 'package:socioconnect/constants.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme,
      
      appBar: AppBar(
        leading: Icon(Icons.cancel, color: Color.fromRGBO(255, 255, 255, 1),),
        backgroundColor: appTheme,
        title: Text("Settings", style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),

        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(28.0), topRight: Radius.circular(28.0))
            ),

            child: Column(
              children: [
                const SizedBox(height: 18,),
                settingsMenu(Icons.edit, "Edit Profile"),
                settingsMenu(Icons.person, "Friends"),

                const SizedBox(height: 12,),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text("Preferences", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                  ),
                ),

                const SizedBox(height: 22,),

                settingsMenu(Icons.shield_outlined, "Account & Privacy"),
                settingsMenu(Icons.help_outline, "Help"),
                settingsMenu(Icons.info_outline, "About"),
               
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget settingsMenu(IconData icon, String title) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}