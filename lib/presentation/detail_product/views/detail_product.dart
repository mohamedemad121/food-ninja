import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/detail_product/widgets/cont_scroll.dart';
import 'package:foodninja/presentation/detail_product/widgets/list_view_product.dart';
import 'package:foodninja/presentation/detail_product/widgets/list_view_v.dart';
import 'package:foodninja/presentation/detail_product/widgets/loc_like.dart';
import 'package:foodninja/presentation/detail_product/widgets/popular.dart';
import 'package:foodninja/presentation/detail_product/widgets/rate_comment.dart';
import 'package:foodninja/presentation/detail_product/widgets/rating.dart';
import 'package:foodninja/presentation/detail_product/widgets/test_tex.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              ImageManger.photorest,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              maxChildSize: 0.9,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomScrollView(
                      controller: scrollController,
                      slivers: [
                        SliverToBoxAdapter(child: SizedBox(height: 18.5)),
                        SliverToBoxAdapter(child: ContScroll()),
                        SliverToBoxAdapter(child: SizedBox(height: 20)),
                        SliverToBoxAdapter(child: LocLike()),
                        SliverToBoxAdapter(child: SizedBox(height: 19.5)),
                        SliverToBoxAdapter(
                          child: Text(
                            'Wijie Bar and Resto',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontFamily: 'BentonSansbold',
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(child: SizedBox(height: 20)),
                        SliverToBoxAdapter(child: Rating()),
                        SliverToBoxAdapter(child: SizedBox(height: 20)),
                        SliverToBoxAdapter(child: RateComment()),
                        SliverToBoxAdapter(child: SizedBox(height: 20)),
                        SliverToBoxAdapter(child: Popular()),
                        SliverToBoxAdapter(child: SizedBox(height: 20)),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 177,

                            child: ListViewProduct(),
                          ),
                        ),
                        SliverToBoxAdapter(child: TestTex()),
                        SliverToBoxAdapter(child: SizedBox(height: 20)),
                        SliverToBoxAdapter(
                          child: SizedBox(height: 200, child: ListViewV()),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
