import 'package:flutter/material.dart';
import 'package:foodninja/core/components/filter_text.dart';
import 'package:foodninja/core/components/stack_navbar.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/home_view/widgets/list_view_popular_menu.dart';

class ExploreMenu extends StatelessWidget {
  const ExploreMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackNavbar(),
            SizedBox(height: 18),
            FilterText(svg: SvgManger.filter),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Popular Menu',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListViewPopularMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
