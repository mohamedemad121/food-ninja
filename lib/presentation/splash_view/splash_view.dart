import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.push(AppRouter.kpageviewbody);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Opacity(opacity: 0.5, child: Image.asset(ImageManger.splashImage)),
          Center(
            child: Image.asset(
              ImageManger.logo,
              height: MediaQuery.of(context).size.height * 0.139,

              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ShaderMask(
              shaderCallback:
                  (bounds) => LinearGradient(
                    colors: [Color(0xff62e798), Color(0xff1ac179)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(Rect.fromLTWH(0, 0, 110, bounds.height)),
              blendMode: BlendMode.srcIn,
              child: Text(
                'FOODNINJA',
                style: TextStyle(fontFamily: 'Viga', fontSize: 40),
              ),
            ),
          ),
          Text(
            'Deliever Favorite Food',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
