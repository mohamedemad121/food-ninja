import 'package:flutter/material.dart';
import 'package:foodninja/presentation/home_view/widgets/filter_text.dart';
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
        ],
      ),
    );
  }
}
