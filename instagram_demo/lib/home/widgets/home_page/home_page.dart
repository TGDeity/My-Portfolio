import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_demo/home/widgets/home_page/app_bar.dart';
import 'package:instagram_demo/home/widgets/home_page/posts.dart';
import 'package:instagram_demo/home/widgets/home_page/story_page.dart';
import 'package:instagram_demo/model/statics.dart';
import 'package:instagram_demo/providers/providers.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String instagramBorder =
      "https://i.pinimg.com/564x/2e/2c/49/2e2c4918edc8206ac0928cfe93c606c7.jpg";
  final String _photo2 =
      "https://www.insansepeti.com/wp-content/uploads/2021/09/instagram-logo-icon-symbol-6062238.png";
  final String maria = "images/car.png";
  double defaultPadding = Statics.defaultPadding;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, ref, child) {
      return Column(
        children: [
          const Expanded(
            flex: 10,
            child: BuildAppBar(),
          ),
          Expanded(
            flex: 100,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              createStory(defaultPadding, instagramBorder),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: GeneratePost.generatePost(context, ref,
                          instagramBorder, _photo2, maria, defaultPadding),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }));
  }

//generatePost

  Widget createStory(double defaultPadding, String instagramBorder) {
    return Row(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: const StoryExamplePage()),
      ],
    );
  }
}

class LikeButtonn extends StatelessWidget {
  const LikeButtonn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        Future<bool> onLikeButtonTapped(bool isLiked, WidgetRef ref) async {
          var a = ref.watch(favAndUnFav);
          a = isLiked;

          if (a == true) {
            ref.watch(favCounter.notifier).state--;
            return !a;
          }
          ref.watch(favCounter.notifier).state++;
          return !a;
        }

        return LikeButton(
          onTap: (isLiked) => onLikeButtonTapped(isLiked, ref),
        );
      }),
    );
  }
}
