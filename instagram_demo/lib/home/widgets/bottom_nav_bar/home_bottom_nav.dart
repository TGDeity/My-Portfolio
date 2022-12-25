import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_demo/home/widgets/home_page/home_page.dart';
import 'package:instagram_demo/home/widgets/profile/profile_page.dart';
import 'package:instagram_demo/home/widgets/reels/reels_page.dart';
import 'package:instagram_demo/home/widgets/search/search_page.dart';
import 'package:instagram_demo/providers/providers.dart';

class BottomNavBarBuild extends HookConsumerWidget {
  const BottomNavBarBuild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      onTap: ((value) => bottomNavBarItemBuilder(ref, value)),
      currentIndex: ref.watch(selectedIndex),
      type: BottomNavigationBarType.fixed,
      items: bottomNavBarItems(ref),
    );
  }

  List<BottomNavigationBarItem> bottomNavBarItems(WidgetRef ref) {
    Color colorGenerator(int val) {
      return ref.watch(selectedIndex) == val ? Colors.black : Colors.grey;
    }

    return [
      BottomNavigationBarItem(
          label: "", icon: Icon(Icons.home, color: colorGenerator(0))),
      BottomNavigationBarItem(
          label: "", icon: Icon(Icons.search, color: colorGenerator(1))),
      BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.slow_motion_video, color: colorGenerator(2))),
      BottomNavigationBarItem(
          label: "", icon: Icon(Icons.person_pin, color: colorGenerator(3)))
    ];
  }

  void bottomNavBarItemBuilder(ref, value) {
    //
    Widget selectPageGenerator(ref, Widget widget) {
      return ref.watch(selectedPage.notifier).state = widget;
    }
    //

    //
    ref.watch(selectedIndex.notifier).state = value;
    int selectPage = ref.watch(selectedIndex.notifier).state;
    //
    switch (selectPage) {
      case 0:
        selectPageGenerator(ref, const HomePage());
        break;
      case 1:
        selectPageGenerator(ref, const SearchPage());
        break;
      case 2:
        selectPageGenerator(ref, const ReelsPage());
        break;
      case 3:
        selectPageGenerator(ref, const ProfilePage());
        break;
      default:
        selectPageGenerator(ref, const HomePage());
    }
  }
}
