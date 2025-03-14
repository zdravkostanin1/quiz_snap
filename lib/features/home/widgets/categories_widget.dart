import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xff7D0A0A),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
            child: Text(
              "Anime",
              style: TextStyle(color: Colors.white, fontSize: 15.5),
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          width: 125,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xffF8ED8C),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 3.0),
            child: Text(
              "Entertainemnt",
              style: TextStyle(color: Colors.black, fontSize: 15.5),
            ),
          ),
        ),
      ],
    );
  }
}
