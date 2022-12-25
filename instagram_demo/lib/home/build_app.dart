import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_demo/providers/providers.dart';

import 'widgets/bottom_nav_bar/home_bottom_nav.dart';

class BuildApp extends HookConsumerWidget {
  const BuildApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        bottomNavigationBar: const BottomNavBarBuild(),
        body: ref.watch(selectedPage)); //Provider selected Page.
  }
}
