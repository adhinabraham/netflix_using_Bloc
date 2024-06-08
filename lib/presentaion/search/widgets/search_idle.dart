import 'package:bloc_may/core/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/constants.dart';

const imageUrl = "https://media.themoviedb.org/t/p/w250_and_h141_face/jaRoloTuVFYYvBH5VlRBQnf2egx.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Searchs",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchitemTile(),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 2,);
              },
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchitemTile extends StatelessWidget {
  const TopSearchitemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width:screenWidht.width * 0.3 ,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Kwidth,
        const Expanded(child: Text("Movie Name",style: TextStyle(color: KwhiteColor, fontWeight:FontWeight.bold ),)),
       const Icon(CupertinoIcons.video_camera,color: Colors.white,)
      ],
    );
  }
}
