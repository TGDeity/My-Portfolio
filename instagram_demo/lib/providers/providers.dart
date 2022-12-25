import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_demo/home/widgets/home_page/home_page.dart';

//BottomNavIndex
StateProvider<int> selectedIndex = StateProvider<int>((_) {
  return 0;
});

//select BottomNavPage
StateProvider<Widget> selectedPage = StateProvider<Widget>((_) {
  //default start page => HomePage().
  return const HomePage();
});

StateProvider<bool> favAndUnFav = StateProvider<bool>(((_) => false));
StateProvider<int> favCounter = StateProvider<int>(((_) => 1157));


