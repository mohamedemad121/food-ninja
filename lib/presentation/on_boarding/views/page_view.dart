import 'package:flutter/material.dart';
import 'package:foodninja/presentation/on_boarding/widgets/on_boarding1.dart';
import 'package:foodninja/presentation/on_boarding/widgets/on_boarding2.dart';

class PageViewBody extends StatelessWidget {
  PageViewBody({super.key});
  final List<Widget> pages = [OnBoarding1(), OnBoarding2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageView(children: pages));
  }
}
