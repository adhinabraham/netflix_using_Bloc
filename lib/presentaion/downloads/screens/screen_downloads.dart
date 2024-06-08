import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/app_bar_wigets.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final networkImage = [
      "https://dessineart.com/cdn/shop/products/Movie-Posters-Black-Frame-The-Shawshank-Redemption-1994-Movie-Posters-Art_460x.jpg?v=1642613856",
      "https://dessineart.com/cdn/shop/products/Movie-Posters-Black-Frame-The-Shawshank-Redemption-1994-Movie-Posters-Art_460x.jpg?v=1642613856",
      "https://dessineart.com/cdn/shop/products/Movie-Posters-Black-Frame-The-Shawshank-Redemption-1994-Movie-Posters-Art_460x.jpg?v=1642613856"
    ];
    return Scaffold(
      appBar : const PreferredSize(preferredSize:Size.fromHeight(50), child: AppBarWigets(title: 'Downloads',),),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                smartDownloads(),
                const Text("Introducing downloads for you", style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                const Text("we will download a personalised selection of movies and shows for you ", style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
                SizedBox(
                  width: size.width,
                  height: size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child:CircleAvatar(
                          radius: size.width * 0.4,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        )
                      ),
                      DownloadsImageWidget(size: size, networkImage: networkImage[0])
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text("setup"),
            ),
          ),
          Kwidth,
          SizedBox(
            width: size.width,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text("See what you can download"),
            ),
          ),
        ],
      ),
    );
  }

  Row smartDownloads() {
    return const Row(
          children: [
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
            Kwidth,
            Text("Smart Downloads")
          ],
        );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.size,
    required this.networkImage,
  });

  final Size size;
  final String networkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
       width:  size.width * 0.4,
       height:  size.width * 0.7,
       decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),image: DecorationImage(image: NetworkImage(networkImage), fit: BoxFit.cover,)),
     );
  }
}
