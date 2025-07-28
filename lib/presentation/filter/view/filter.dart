import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/filter_text.dart';
import 'package:foodninja/core/components/stack_navbar.dart';
import 'package:foodninja/presentation/filter/widgets/list_filter.dart';

class FilterSearch extends StatelessWidget {
  FilterSearch({super.key});
  final List<String> type = ['Resturant', 'menu'];
  final List<String> location = ['1 km', '>10 km', '<10 km'];
  final List<String> food = ['Cake', '>Soup', '<Main Course'];
  final List<String> food2 = ['Appetizer', 'Dessert'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackNavbar(),
            SizedBox(height: 18),
            FilterText(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Type',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: type.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListFilter(text: type[index]);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Location',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: location.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListFilter(text: location[index]);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Food',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: food.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListFilter(text: food[index]);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: food2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListFilter(text: food2[index]);
                  },
                ),
              ),
            ),
            SizedBox(height: 138),
            Center(child: CustomButton(text: 'Search')),
          ],
        ),
      ),
    );
  }
}
