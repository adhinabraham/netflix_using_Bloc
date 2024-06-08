import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';

class AppBarWigets extends StatelessWidget {
  const AppBarWigets({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
        Spacer(),
        Icon(Icons.cast, color: Colors.white,),
        Kwidth,
        Container(color: Colors.blue,
        width: 40,
            height: 30,),
        Kwidth

      ],
    );
  }
}
