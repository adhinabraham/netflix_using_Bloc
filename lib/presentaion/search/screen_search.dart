import 'package:bloc_may/presentaion/search/widgets/search_idle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: SafeArea(child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey,
              prefixIcon:   Icon(CupertinoIcons.search, color:  Colors.white,),
              suffixIcon:   Icon(CupertinoIcons.xmark_circle, color:  Colors.white,),
              style: TextStyle(color: Colors.white),
            ),
            Kheight,
            Expanded(child: SearchIdleWidget()),
          ],
        ),
      )),
    );
  }
}