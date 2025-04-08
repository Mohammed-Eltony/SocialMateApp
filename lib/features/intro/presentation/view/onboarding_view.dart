import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/core/util/colors.dart';
import 'package:social_mate/core/util/responsive_layout.dart';
import 'package:social_mate/core/util/text_style.dart';
import 'package:social_mate/core/widgets/custom_button.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController controller = PageController();

  int currentIndex = 0;

  List<Map<String, dynamic>> onboardingItem = [
    {'image': Assets.onboarding0, 'description': Assets.logo2},
    {
      'image': Assets.onboarding1,
      'title': 'Find Friends & Get Inspiration',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat vitae quis quam augue quam a.',
    },
    {
      'image': Assets.onboarding2,
      'title': 'Meet Awesome People & Enjoy yourself',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat vitae quis quam augue quam a.',
    },
    {
      'image': Assets.onboarding3,
      'title': 'Hangout with with Friends',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat vitae quis quam augue quam a.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: -20, left: -20, child: EfctWidget()),
          Positioned(bottom: -20, right: -20, child: EfctWidget()),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.all(16.w(context)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Rsp.getScreenHeight() * 0.7,
                    child: PageView.builder(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return index == 0

                        
                            ? Column(
                              children: [
                                SvgPicture.asset(
                                  onboardingItem[index]['image'],
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                  onboardingItem[index]['description'],
                                ),
                                Spacer(),
                              ],
                            )
                            : Column(
                              children: [
                                SvgPicture.asset(
                                  onboardingItem[index]['image'],
                                ),
                                Gap(30.h(context)),
                                Text(
                                  onboardingItem[index]['title'] ?? '',
                                  textAlign: TextAlign.center,
                                  style: getTitleStyle(context),
                                ),
                                Gap(10.h(context)),
                                Expanded(
                                  child: Text(
                                    onboardingItem[index]['description'] ?? '',
                                    textAlign: TextAlign.center,

                                    style: getBodyStyle(context),
                                  ),
                                ),
                              ],
                            );
                      },
                      itemCount: onboardingItem.length,
                    ),
                  ),
                  Gap(16.h(context)),
                  SmoothPageIndicator(
                    onDotClicked: (index) {},
                    controller: controller,
                    count: onboardingItem.length,
                    axisDirection: Axis.horizontal,
                    effect: ExpandingDotsEffect(
                      spacing: 8.0,
                      radius: 16,
                      dotWidth: 16.0,
                      dotHeight: 16,
                      paintStyle: PaintingStyle.fill,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey.shade400,
                      activeDotColor: AppColors.primaryColor,
                    ),
                  ),
                  Gap(30.h(context)),
                  currentIndex != 0
                      ? Column(
                        children: [
                          CustomButton(
                            width: double.infinity,
                            text: 'Join Now',
                          ),
                          Gap(10.h(context)),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign in',

                              style: getBodyStyle(
                                context,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      )
                      : SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EfctWidget extends StatelessWidget {
  const EfctWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w(context),
      height: 250.h(context),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.secondColor.withAlpha(50),
            blurRadius: 200,
            offset: Offset(0, 2),
          ),
        ],
      ),
    );
  }
}
