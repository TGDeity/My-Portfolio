import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_demo/model/statics.dart';

class ReelsPage extends HookConsumerWidget {
  const ReelsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [AppBar(title: Text(Statics.reelsPageTitle))],
    );
  }
}
