import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height *0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
          filled: true,
          fillColor: Color.fromRGBO(249, 249, 249, 1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Color.fromRGBO(249, 249, 249, 1))
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Color.fromRGBO(249, 249, 249, 1))
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Color.fromRGBO(249, 249, 249, 1))
          ),
        ),
      ),
    );
  }
}