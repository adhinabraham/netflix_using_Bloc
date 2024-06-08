import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifer = ValueNotifier(0);
class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifer, builder:(context, int newIndexValue,child){
      return  BottomNavigationBar(
          currentIndex: newIndexValue,
          onTap:(index){
            indexChangeNotifer.value = index;
          },
          elevation: 0,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.collections),
                label: "New & Hot"),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions),
                label: "Fast Laughs"),
            BottomNavigationBarItem(icon: Icon(Icons.search),
                label: "Search "),
            BottomNavigationBarItem(icon: Icon(Icons.arrow_drop_down_circle),
                label: "Downloads"),
          ]);
    });
  }
}
