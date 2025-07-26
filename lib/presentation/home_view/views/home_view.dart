import 'package:flutter/material.dart';
import 'package:foodninja/presentation/home_view/widgets/filter_text.dart';
import 'package:foodninja/presentation/home_view/widgets/list_view_popular.dart';
import 'package:foodninja/presentation/home_view/widgets/popular_resturant.dart';
import 'package:foodninja/presentation/home_view/widgets/stack_home.dart';
import 'package:foodninja/presentation/home_view/widgets/stack_navbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: StackNavbar()),
          SliverToBoxAdapter(child: SizedBox(height: 18)),
          SliverToBoxAdapter(child: FilterText()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: StackHome()),
          SliverToBoxAdapter(child: SizedBox(height: 25)),
          SliverToBoxAdapter(child: PopularResturant()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * (184 / 810),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListViewPopular();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
