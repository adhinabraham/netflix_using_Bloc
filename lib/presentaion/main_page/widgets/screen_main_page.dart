import 'package:bloc_may/core/colors/colors.dart';
import 'package:bloc_may/presentaion/fast_laugh/screen_fast_laugh.dart';
import 'package:bloc_may/presentaion/home/screen_home.dart';
import 'package:bloc_may/presentaion/new_and_hot/screen_new_and_hot.dart';
import 'package:bloc_may/presentaion/search/screen_search.dart';
import 'package:bloc_may/presentaion/search/widgets/search_idle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../downloads/screens/screen_downloads.dart';
import 'bottom_navigation_bar.dart';


class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

   final _pages =  [
     ScreenHome(),
     ScreenNewAndHot(),
     ScreenFastLaugh(),
     ScreenSearch(),
     ScreenDownloads()
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(valueListenable:indexChangeNotifer , builder:(context , value , child ){
        return SafeArea(child: _pages[value]);
      }),
      bottomNavigationBar:  const BottomNavigationWidget(),
    );
  }
}
