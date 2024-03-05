import 'dart:ui';

import 'package:animation_demo/base_bg_blur.dart';
import 'package:animation_demo/custom_sliver_header_delegate.dart';
import 'package:animation_demo/home/home_viewmodel.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:smooth_corner/smooth_corner.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.2),
          body: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, George',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    // SvgPicture.asset('assets/rutvik.jpg'),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: ShapeDecoration(
                          shape: SmoothRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          color: Colors.amber),
                    )
                  ],
                ),
                Expanded(
                  child: PageView(
                    children: const [
                      FirstPageViewWidget(),
                      SecondPageView(),
                      ThirdScreenWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class SecondPageView extends StatelessWidget {
  const SecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AnimationLimiter(
              child: Column(
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 300),
              childAnimationBuilder: (widget) => SlideAnimation(
                verticalOffset: 50.0,
                duration: const Duration(milliseconds: 300),
                child: FadeInAnimation(
                  curve: accelerateEasing,
                  duration: const Duration(milliseconds: 300),
                  child: widget,
                ),
              ),
              children: [
                const SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: SmoothRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Colors.black26,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'VISA',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Balance',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              '9037 5578 1049 7745',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '05/22',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: SmoothRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    color: Colors.black45,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(9.0),
                                    child: Text(
                                      'SHOW CVV',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AnimationLimiter(
                        child: Row(
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 800),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              verticalOffset: 50.0,
                              duration: const Duration(milliseconds: 800),
                              child: FadeInAnimation(
                                curve: Curves.easeInCirc,
                                child: widget,
                              ),
                            ),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 1,
                                    sigmaY: 1,
                                  ),
                                  child: Container(
                                    height: 130,
                                    decoration: ShapeDecoration(
                                      shape: SmoothRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Balance',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: ShapeDecoration(
                                                  shape: SmoothRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      30,
                                                    ),
                                                  ),
                                                  color: Colors.brown,
                                                ),
                                              )
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Text(
                                              '6,421.52',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 28,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                height: 130,
                                decoration: ShapeDecoration(
                                  shape: SmoothRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Colors.brown,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        BootstrapIcons.shield_exclamation,
                                        size: 40,
                                      ),
                                      Text(
                                        'Settings',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 1,
                                    sigmaY: 1,
                                  ),
                                  child: Container(
                                    height: 130,
                                    decoration: ShapeDecoration(
                                      shape: SmoothRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Balance',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: ShapeDecoration(
                                                  shape: SmoothRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      30,
                                                    ),
                                                  ),
                                                  color: Colors.brown,
                                                ),
                                              )
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Text(
                                              '6,421.52',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 28,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const AtmCardWidget(),
                const SizedBox(height: 20),
                const AtmCardWidget(),
                const SizedBox(height: 20),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class ThirdScreenWidget extends ViewModelWidget<HomeViewModel> {
  const ThirdScreenWidget({super.key});

  @override
  Widget build(BuildContext context, model) {
    return CustomScrollView(
      controller: model.scrollController,
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomSliverPersistantHeaderDelegate(
            builder: (shrink) {
              return ShrinkHeaderWidget(
                shrink: shrink,
              );
            },
            context: context,
          ),
        ),
        // SliverPersistentHeader(
        //   pinned: true,
        //   delegate: CustomSliverPersistantHeaderDelegate(
        //     builder: (shrink) => GestureDetector(
        //       child: shrink > 0.7
        //           ? ThirdScreenAnimation(
        //               shrink: shrink,
        //             )
        //           : Container(),
        //     ),
        //     context: context,
        //   ),
        // ),
        if (!model.isScrollEventDispatched)
          SliverToBoxAdapter(
            child: AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 1500),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: 50.0,
                    duration: const Duration(milliseconds: 1500),
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    const SizedBox(height: 10),
                    const AtmCardWidget(),
                    const SizedBox(height: 10),
                    const AtmCardWidget(),
                    const SizedBox(height: 10),
                    const AtmCardWidget(),
                    const SizedBox(height: 10),
                    const AtmCardWidget(),
                  ],
                ),
              ),
            ),
          )
        else
          const SliverToBoxAdapter(
              child: Center(
                  child: Padding(
            padding: EdgeInsets.only(top: 100),
            child: CircularProgressIndicator(),
          )))
      ],
    );
  }
}

class ThirdScreenAnimation extends StatelessWidget {
  final double shrink;
  const ThirdScreenAnimation({
    super.key,
    required this.shrink,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 4000),
        curve: Curves.bounceOut,
        child: Container(
          decoration: ShapeDecoration(
            shape: SmoothRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            color: Colors.black38,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 60,
                      color: Colors.white30,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Balance',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        shape: SmoothRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        color: Colors.amberAccent.withOpacity(0.4),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'See more',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: ShapeDecoration(
                        shape: SmoothRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ATM, 375 Canal St',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      '@ 300',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      color: Colors.amberAccent,
                    ),
                    const SizedBox(width: 4),
                    Container(
                      height: 5,
                      width: 5,
                      color: Colors.amberAccent,
                    ),
                    const SizedBox(width: 4),
                    Container(
                      height: 5,
                      width: 5,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShrinkHeaderWidget extends ViewModelWidget<HomeViewModel> {
  final double shrink;

  const ShrinkHeaderWidget({
    super.key,
    required this.shrink,
  });

  @override
  Widget build(BuildContext context, model) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.amberAccent.withOpacity(0.5),
          ),
          child: Image.network(
            'https://instagram.fstv5-1.fna.fbcdn.net/v/t51.2885-19/131389691_1574729682916633_5401636525094893178_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fstv5-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=4mJoyGyZQ70AX8GlMX7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAM24w5q4JuuTJ3rbSxwSCfG3mfwJ3jIJDKk-J9Hf_GLg&oe=65EB14E3&_nc_sid=8b3546',
            fit: BoxFit.cover,
          ),
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 1),
              end: Alignment(0.0, 0.0),
              colors: <Color>[
                Colors.black26,
                Colors.transparent,
              ],
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(shrink),
          ),
        ),
        if (shrink == 1)
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: BaseBgBlur(
              sigmaX: shrink - 1,
              sigmaY: shrink - 1,
              borderRadius: BorderRadius.circular(8),
              child: GestureDetector(
                // onTap: () => Get.back(result: model.product),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity((shrink - 1).abs()),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    'https://instagram.fstv5-1.fna.fbcdn.net/v/t51.2885-19/131389691_1574729682916633_5401636525094893178_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fstv5-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=4mJoyGyZQ70AX8GlMX7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAM24w5q4JuuTJ3rbSxwSCfG3mfwJ3jIJDKk-J9Hf_GLg&oe=65EB14E3&_nc_sid=8b3546',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          top: (MediaQuery.of(context).padding.top) + 10,
          left: 18,
          child: BaseBgBlur(
            sigmaX: shrink - 1,
            sigmaY: shrink - 1,
            borderRadius: BorderRadius.circular(8),
            child: GestureDetector(
              // onTap: () => Get.back(result: model.product),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 10,
                  right: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity((shrink - 1).abs()),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  BootstrapIcons.chevron_left,
                  color: shrink < 0.7
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
                  size: 16,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).padding.top) + 10,
          right: 18,
          child: BaseBgBlur(
            sigmaX: shrink - 1,
            sigmaY: shrink - 1,
            borderRadius: BorderRadius.circular(8),
            child: GestureDetector(
              // onTap: () => model.handleProductActionButtonTap(model.product!),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 12,
                  right: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity((shrink - 1).abs()),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  BootstrapIcons.three_dots_vertical,
                  color: shrink < 0.7
                      ? Colors.greenAccent
                      : Colors.greenAccent.shade400,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
        if (!model.isScrollEventDispatched)
          Positioned(
            top: (MediaQuery.of(context).padding.top) + model.size,
            right: 0,
            bottom: 0,
            left: 0,
            child: BaseBgBlur(
              sigmaX: 100,
              sigmaY: 100,
              borderRadius: BorderRadius.circular(8),
              child: GestureDetector(
                onTapDown: (details) {
                  // model.size = 200;
                  model.notifyListeners();
                },
                child: Container(
                  height: 80,
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 12,
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity((shrink - 1).abs()),
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          bottom: (4.0 * (shrink - 1).abs()) + 18.0,
          left: (60 * shrink) + 16.0,
          right: (shrink * 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Rutvik',
                          style: TextStyle(
                            color: shrink < 0.5
                                ? Colors.greenAccent
                                : Colors.greenAccent.shade400,
                            fontSize: 35.0 - (shrink * 15.0),
                          ),
                          softWrap: (shrink < 0.5) ? true : false,
                          overflow: (shrink < 0.5) ? null : TextOverflow.fade,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FirstPageViewWidget extends StatelessWidget {
  const FirstPageViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 500),
                  childAnimationBuilder: (widget) => SlideAnimation(
                        verticalOffset: 50.0,
                        duration: const Duration(milliseconds: 500),
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                  children: [
                    const SizedBox(height: 20),
                    const AtmCardWidget(),
                    const SizedBox(height: 20),
                    const AtmCardWidget(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 130,
                          decoration: ShapeDecoration(
                            shape: SmoothRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.amberAccent.withOpacity(0.3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Balance',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: ShapeDecoration(
                                        shape: SmoothRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        color: Colors.brown,
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text(
                                    '6,421.52',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 130,
                          decoration: ShapeDecoration(
                            shape: SmoothRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.blue.withOpacity(0.3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Balance',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: ShapeDecoration(
                                        shape: SmoothRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        color: Colors.brown,
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text(
                                    '6,421.52',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AtmCardWidget(),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class AtmCardWidget extends StatelessWidget {
  const AtmCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: SmoothRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        color: Colors.black38,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 60,
                  color: Colors.white30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: SmoothRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    color: Colors.amberAccent.withOpacity(0.4),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'See more',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: ShapeDecoration(
                    shape: SmoothRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 10),
                const Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ATM, 375 Canal St',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '@ 300',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 5,
                  color: Colors.amberAccent,
                ),
                const SizedBox(width: 4),
                Container(
                  height: 5,
                  width: 5,
                  color: Colors.amberAccent,
                ),
                const SizedBox(width: 4),
                Container(
                  height: 5,
                  width: 5,
                  color: Colors.amberAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
