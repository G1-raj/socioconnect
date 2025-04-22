import 'package:flutter/material.dart';
import 'package:socioconnect/widgets/search_bar/search_bar_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 28,),
              SearchBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}