import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/app_router.dart';

void main() {
  runApp(FoodNinja());
}

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      
    );
  }
}
