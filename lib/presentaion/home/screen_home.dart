import 'package:bloc_may/core/constants.dart';
import 'package:bloc_may/presentaion/widgets/app_bar_wigets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/main_card.dart';
import '../widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final imageUrl = "https://media.themoviedb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg";
  final netFlixImage = "https://phandroid.com/wp-content/uploads/2019/09/netflix-logo.jpg";
  ValueNotifier<bool> _visible = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<bool>(
          valueListenable: _visible,
          builder: (context, index,_) {
            return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  print("${direction}");
                  if (direction == ScrollDirection.reverse) {
                    _visible.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    _visible.value = true;
                  };
                  return true;
                },
                child: Stack(
                  children:[ ListView(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 600,
                            decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage(KmainImage))),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 5,
                            left: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                  label: const Text("MyList"),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(Colors.black)),
                                  icon: const Icon(Icons.play_arrow),
                                  label: const Text("Play"),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.info),
                                  label: const Text("INFO "),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      mainTitleCard(titleName: 'Released in the Past Year '),
                      mainTitleCard(titleName: 'Top Trending '),
                      mainTitleCard(titleName: 'Your Favorite '),
                      mainTitleCard(titleName: 'Hits or bollywood'),
                    ],
                  ),
                  _visible.value == true ? AnimatedContainer(
                    width: double.infinity,
                    height: 60,
                    color: Colors.black,
                    duration: Duration(seconds: 5),
                    child:Column(
                      children: [
                        Row(children: [
                          Image.network(netFlixImage, width: 70, height: 40,fit: BoxFit.cover,),
                          const Spacer(),
                          Icon(Icons.cast, color: Colors.white,),
                          Kwidth,
                          Container(color: Colors.blue,
                            width: 40,
                            height: 30,),
                          Kwidth

                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Text("TV shows "),
                          Text("movies "),
                          Text("Categories ")
                        ],)
                      ],
                    )
                  ) : const SizedBox.shrink()],
                )
            );
          },
        )
    );
  }

  Column mainTitleCard({required String titleName}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MainTitle(
        title: titleName,
      ),
      Kheight,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(10, (index) => mainCard(imageUrl: imageUrl)),
        ),
      )
    ]);
  }
}
