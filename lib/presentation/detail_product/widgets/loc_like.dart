import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class LocLike extends StatelessWidget {
  const LocLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.5),
                                  color: Color(0xffeafaf2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  child: Text(
                                    'popular',
                                    style: TextStyle(color: Color(0xff49d68f)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 180),
                              SvgPicture.asset(SvgManger.iconloc),
                              SizedBox(width: 10),
                              SvgPicture.asset(SvgManger.iconlove),
                            ],
                          );
  }
}