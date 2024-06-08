import 'package:flutter/cupertino.dart';

class mainCard extends StatelessWidget {
  const mainCard({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover),

        ),
      ),
    );
  }
}