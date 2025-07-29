import 'package:flutter/material.dart';
import 'package:foodninja/core/components/filter_text.dart';
import 'package:foodninja/core/components/stack_navbar.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/home_view/widgets/list_view_popular.dart';
import 'package:foodninja/presentation/home_view/widgets/list_view_popular_menu.dart';
import 'package:foodninja/presentation/home_view/widgets/popular_resturant.dart';
import 'package:foodninja/presentation/home_view/widgets/stack_home.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: StackNavbar()),
          SliverToBoxAdapter(child: SizedBox(height: 18)),
          SliverToBoxAdapter(
            child: FilterText(
              onTap: () {
                context.push(AppRouter.kfilter);
              },
              svg: SvgManger.filter,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: StackHome()),
          SliverToBoxAdapter(child: SizedBox(height: 25)),
          SliverToBoxAdapter(
            child: PopularResturant(
              onTap: () {
                context.push(AppRouter.kexploreresturant);
              },
              text2: 'View More',
              text: 'Popular resturant',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * (184 / 810),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListViewPopular(),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: PopularResturant(
              onTap: () {
                context.push(AppRouter.kexploremenu);
              },
              text2: 'View More',
              text: 'Popular menu',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListViewPopularMenu(),
            ),
          ),
        ],
      ),
    );
  }
}
