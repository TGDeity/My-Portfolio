import 'package:flutter/material.dart';
import 'package:instagram_demo/model/instagram_user_model.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Yorumlar"),
          actions: [
            Image.asset(
              "images/insta_direct.png",
              width: 25,
              height: 25,
            ),
          ],
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: ((context, index) {
              return Padding(
                  padding: const EdgeInsets.all(16), child: createCommet());
            })));
  }

  Column createCommet() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
                backgroundImage:
                    NetworkImage("https://tgatech.software/images/mee.png")),
            Padding(
              padding: const EdgeInsets.only(left: 16.0 / 2),
              child: Text(
                Users.getUsers()[0].toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0 / 2),
              child: Text("Deneme yorum"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text("8d"),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16), child: Text("Yanitla")),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text("Gönder"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text("Menü"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
