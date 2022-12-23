import 'package:flutter/material.dart';

class SearchState extends StatefulWidget {
  const SearchState({Key? key}) : super(key: key);

  @override
  State<SearchState> createState() => _SearchStateState();
}

class _SearchStateState extends State<SearchState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      height: 48,
      width: 366,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'What are you looking for?',
            hintStyle: TextStyle(
              color: Color.fromRGBO(184, 184, 184, 1),
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            border: InputBorder.none),
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
