import 'package:bloc_may/core/constants.dart';
import 'package:flutter/cupertino.dart';

final imageUrl = "https://dessineart.com/cdn/shop/products/Movie-Posters-Black-Frame-The-Shawshank-Redemption-1994-Movie-Posters-Art_460x.jpg?v=1642613856";

class SearchResutlWidget extends StatelessWidget {
  const SearchResutlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size;
    return Column(
      children: [
        Text("Movie & Tv"),
        Kheight,
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: List.generate(20, (index) {
            return MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
