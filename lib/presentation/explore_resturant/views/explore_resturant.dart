import 'package:flutter/material.dart';
import 'package:foodninja/core/components/filter_text.dart';
import 'package:foodninja/core/components/stack_navbar.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/explore_resturant/widgets/grid_popular.dart';

class ExploreResturant extends StatelessWidget {
  const ExploreResturant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StackNavbar(),
              SizedBox(height: 18),
              FilterText(svg: SvgManger.filter),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: Text(
                  'Popular Resturant',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'BentonSansbold',
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridPopular(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
