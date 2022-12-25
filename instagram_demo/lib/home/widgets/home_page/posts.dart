import 'package:awesome_bookmark_icon_button/awesome_bookmark_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_demo/home/widgets/home_page/comments.dart';
import 'package:instagram_demo/home/widgets/home_page/home_page.dart';
import 'package:instagram_demo/model/instagram_user_model.dart';
import 'package:instagram_demo/providers/providers.dart';

class GeneratePost {
  static List<Widget> generatePost(
      BuildContext context,
      WidgetRef ref,
      String instagramBorder,
      String photo2,
      String maria,
      double defaultPadding) {
    List<Column> getList = [];
    for (var i = 0; i < Users.getUsers().length; i++) {
      getList.add(
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: defaultPadding,
                    backgroundImage: NetworkImage(photo2)),
                Text(Users.getUsers()[i]),
                const Spacer(),
                Image.asset("images/ucnokta.png", width: 25, height: 25),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width <= 866
                  ? double.infinity
                  : MediaQuery.of(context).size.width * 0.5,
              child: Image.asset(maria, fit: BoxFit.fill),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Expanded(child: LikeButtonn()),
                  Expanded(
                    child: GestureDetector(
                      onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Comments(),
                          ))),
                      child: Image.asset("images/insta_yorum.png",
                          height: 50, width: 50),
                    ),
                  ),
                  Expanded(
                    child: Image.asset("images/insta_direct.png",
                        width: 25, height: 25),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  Expanded(
                      child: BookMarkIconButton(
                          padding: EdgeInsets.zero,
                          iconSize: defaultPadding * 1.8,
                          isSaved: false,
                          onPressed: () {})),
                ]),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultPadding / 1.4, top: defaultPadding / 2),
                  child: Text("${ref.watch(favCounter)} beğenme",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                    padding: EdgeInsets.only(left: defaultPadding / 1.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(Users.getUsers()[i],
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const Text("  comment")
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(left: defaultPadding / 1.4),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Comments())),
                    child: const Text("100 yorumun tümünü gör",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
    return getList;
  }
}
