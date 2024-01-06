import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nftui/animations/fade_animation.dart';
import 'package:nftui/animations/slide_animation.dart';
import 'package:nftui/constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  final double _padding = 40;
  final _headingStyle = const TextStyle(
    fontFamily: 'Dsignes',
    fontWeight: FontWeight.w200,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: const _AppBar(),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: FadeAnimation(
                intervalEnd: 0.4,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/flash.svg'),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Started',
                      style: TextStyle(fontSize: 12.r),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                intervalEnd: 0.6,
                child: FadeAnimation(
                  intervalEnd: 0.6,
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontFamily: 'Dsignes',
                            fontSize: 40.r,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.3),
                        children: [
                          TextSpan(text: 'Discover ', style: _headingStyle),
                          TextSpan(text: 'Rare \nCollections '),
                          TextSpan(text: 'Of', style: _headingStyle),
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                intervalEnd: 0.6,
                begin: const Offset(0, 30),
                child: FadeAnimation(
                  intervalEnd: 0.6,
                  child: Row(
                    children: [
                      Text(
                        'Arts & ',
                        style: TextStyle(
                            fontFamily: 'Dsignes',
                            fontSize: 40.r,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.3),
                      ),
                      const ColoredText(
                        text: 'NFTs',
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: FadeAnimation(
                child: Text(
                  'Digital marketplace for crypto collectibles and non-fungible tokens',
                  style: bodyTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 200.h,
              padding: EdgeInsets.only(left: _padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SlideAnimation(
                    intervalStart: 0.4,
                    begin: const Offset(0, 20),
                    child: FadeAnimation(
                      intervalStart: 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          EventState(
                            title: '12.1K+',
                            subtitle: 'Art Work',
                          ),
                          EventState(
                            title: '1.7M+',
                            subtitle: 'Artists',
                          ),
                          EventState(
                            title: '45K+',
                            subtitle: 'Auction',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60.w,
                  ),
                  Expanded(
                    child: SlideAnimation(
                      intervalStart: 0.2,
                      child: FadeAnimation(
                        intervalEnd: 0.2,
                        child: Container(
                          padding: EdgeInsets.all(24.r),
                          decoration:
                              const BoxDecoration(color: Color(0xffe6d9fe)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 40.r,
                                height: 40.r,
                                decoration: const BoxDecoration(
                                  color: Color(0xffcab2ff),
                                ),
                                child: const Icon(Iconsax.arrow_right_1),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Text(
                                'Discord \nArtwork',
                                style: TextStyle(
                                    fontSize: 24.r,
                                    height: 1.3,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 9),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Divider(
                                thickness: 2,
                                endIndent: 120.w,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                  begin: const Offset(0, 20),
                  intervalStart: 0.6,
                  child: FadeAnimation(
                    intervalStart: 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Supported By',
                          style: bodyTextStyle,
                        ),
                        SvgPicture.asset(
                          'assets/images/binance.svg',
                          width: 24.r,
                        ),
                        SvgPicture.asset(
                          'assets/images/huobi.svg',
                          width: 22.r,
                        ),
                        SvgPicture.asset(
                          'assets/images/xrp.svg',
                          width: 22.r,
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const AppLogo(),
        Container(
          width: 40.r,
          height: 40.r,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          child: const Center(
            child: Icon(
              Iconsax.wallet_1,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'A .',
      style: TextStyle(fontSize: 26.r, fontWeight: FontWeight.bold),
    );
  }
}

class ColoredText extends StatelessWidget {
  const ColoredText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            bottom: 0,
            left: 10.w,
            child: Container(
              width: 85.w,
              height: 30.r,
              color: const Color(0xffaafaff),
            ),
          ),
          Text(text,
              style: TextStyle(
                  fontFamily: 'Dsignes',
                  fontSize: 40.r,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.3))
        ],
      ),
    );
  }
}

class EventState extends StatelessWidget {
  const EventState({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16.r, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 14.r, color: Colors.black54),
        )
      ],
    );
  }
}
