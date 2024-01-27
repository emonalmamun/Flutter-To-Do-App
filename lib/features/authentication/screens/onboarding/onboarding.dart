import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_to_do_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_to_do_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_to_do_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_to_do_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_to_do_app/utils/constants/image_strings.dart';
import 'package:flutter_to_do_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scroll Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: MImages.onBoardingImage1,
                  title: MText.onBoardingTitle1,
                  subTitle: MText.onBoardingSubTitle1),
              OnBoardingPage(
                  image: MImages.onBoardingImage2,
                  title: MText.onBoardingTitle2,
                  subTitle: MText.onBoardingSubTitle2),
              OnBoardingPage(
                  image: MImages.onBoardingImage3,
                  title: MText.onBoardingTitle3,
                  subTitle: MText.onBoardingSubTitle3),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


