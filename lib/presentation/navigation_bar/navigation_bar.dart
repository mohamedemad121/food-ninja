import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/cart_view/views/cart_view.dart';
import 'package:foodninja/presentation/chat_view/views/chat_view.dart';
import 'package:foodninja/presentation/home_view/views/home_view.dart';
import 'package:foodninja/presentation/profile_view/views/profile_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final pages = [HomeView(), ProfileView(), CartView(), ChatView()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffFFFFFF),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: GNav(
            gap: 12,
            tabBackgroundColor: Color(0xffeafaf2),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            selectedIndex: selectedIndex,
            onTabChange: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            tabs: [
              GButton(
                icon: FontAwesomeIcons.house,
                iconSize: 0,
                leading: SvgPicture.asset(
                  SvgManger.home,
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 0 ? Color(0xff2ccd7f) : Color(0xff99e9c0),
                    BlendMode.srcIn,
                  ),
                ),

                text: 'Home',

                borderRadius: BorderRadius.circular(12),
              ),
              GButton(
                icon: FontAwesomeIcons.house,
                iconSize: 0,
                leading: SvgPicture.asset(SvgManger.profile),
                text: 'Profile',
                borderRadius: BorderRadius.circular(12),
              ),
              GButton(
                icon: FontAwesomeIcons.house,
                iconSize: 0,
                leading: SvgPicture.asset(SvgManger.buy),
                text: 'Cart',
                borderRadius: BorderRadius.circular(12),
              ),
              GButton(
                icon: FontAwesomeIcons.house,
                iconSize: 0,
                leading:
                    selectedIndex == 3
                        ? SvgPicture.asset(SvgManger.chat2)
                        : SvgPicture.asset(SvgManger.chat),
                text: 'Chat',
                borderRadius: BorderRadius.circular(12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
