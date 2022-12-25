import 'package:flutter/material.dart';
import 'package:instagram_demo/model/statics.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Statics.homePageTitle),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.favorite_border),
            const SizedBox(width: 10),
            SizedBox(
              width: 25,
              height: 25,
              child: Image.asset("images/instagrampn.png",
                  fit: BoxFit.contain),
            )
          ],
        )
      ],
      shadowColor: Colors.transparent,
      backgroundColor: Colors.white,
    );
  }
}
