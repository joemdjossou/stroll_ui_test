import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stroll_ui_test/controllers/option_button_controller.dart';
import 'package:stroll_ui_test/utils/constants/app_gaps.dart';
import 'package:stroll_ui_test/utils/constants/images_string.dart';
import 'package:stroll_ui_test/utils/theme/app_theme.dart';
import 'package:stroll_ui_test/widgets/option_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.53,
            color: Colors.black,
            child: Image(
              image: const AssetImage(StrollImages.sunSetLake),
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.53,
            ),
          ),

          // Header
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Stroll Bonfire',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: AppTheme.shadePurple,
                        fontSize: 35,
                        shadows: [
                          const Shadow(
                            offset: Offset(0, -1.5),
                            blurRadius: 19,
                            color: Colors.black26,
                          ),
                          const Shadow(
                            offset: Offset(0, 2),
                            blurRadius: 19,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),
                    AppGaps.wGap4,
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppTheme.shadePurple,
                      shadows: [
                        const Shadow(
                          offset: Offset(0, -1.5),
                          blurRadius: 19,
                          color: Colors.black26,
                        ),
                        const Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 19,
                          color: Colors.black26,
                        ),
                        Shadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 30.0,
                          offset: const Offset(0, 2.0),
                        ),
                      ],
                    ),
                  ],
                ),
                AppGaps.hGap8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      StrollImages.timeIcon,
                    ),
                    AppGaps.wGap4,
                    Text(
                      '22h 00m',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        shadows: [
                          const Shadow(
                            offset: Offset(0, -1.5),
                            blurRadius: 19,
                            color: Colors.black12,
                          ),
                          const Shadow(
                            offset: Offset(0, 2),
                            blurRadius: 19,
                            color: Colors.black12,
                          ),
                          const Shadow(
                            offset: Offset(-22, 0),
                            blurRadius: 19,
                            color: Colors.black12,
                          ),
                          const Shadow(
                            offset: Offset(22, 0),
                            blurRadius: 19,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                    ),
                    AppGaps.wGap16,
                    SvgPicture.asset(
                      StrollImages.profileIcon,
                    ),
                    AppGaps.wGap4,
                    Text(
                      '103',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        shadows: [
                          const Shadow(
                            offset: Offset(0, -1.5),
                            blurRadius: 19,
                            color: Colors.black12,
                          ),
                          const Shadow(
                            offset: Offset(0, 2),
                            blurRadius: 19,
                            color: Colors.black12,
                          ),
                          const Shadow(
                            offset: Offset(-22, 0),
                            blurRadius: 20,
                            color: Colors.black12,
                          ),
                          const Shadow(
                            offset: Offset(2, 0),
                            blurRadius: 19,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment(0, 0.2),
                end: Alignment(0, 0),
              ),
            ),
          ),

          /// Name and age
          Positioned(
            top: 460,
            left: 70,
            child: Container(
              height: 22,
              decoration: const BoxDecoration(
                color: AppTheme.backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 10),
                child: Text(
                  'Angelina, 28',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                ),
              ),
            ),
          ),

          /// Profile picture
          Positioned(
            top: 460,
            left: 24,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppTheme.backgroundColor, // Border color
                  width: 8, // Border width
                ),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  StrollImages.profileImage,
                ),
                radius: 30,
              ),
            ),
          ),

          // Question Card
          Positioned(
            bottom: 2.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // Profile and Question
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              'What is your favorite time of the day?',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Match text answer
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '“Mine is definitely the peace in the morning.”',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppTheme.shadePurple,
                                      fontSize: 14,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    // Question Options
                    GetBuilder<OptionButtonController>(
                      init: OptionButtonController(),
                      builder: (controller) => SizedBox(
                        child: GridView(
                          padding: const EdgeInsets.all(8.0),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 14.0,
                            childAspectRatio: 2.7,
                          ),
                          children: List.generate(
                            controller.optionList.length,
                            (index) => OptionButton(
                              letter: controller.optionList[index].optionLetter,
                              text: controller.optionList[index].text,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AppGaps.hGap16,
                    // Bottom Actions
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pick your option.',
                                style:
                                    AppTheme.darkTheme().textTheme.displaySmall,
                              ),
                              Text(
                                'See who has a similar mind.',
                                style:
                                    AppTheme.darkTheme().textTheme.displaySmall,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  StrollImages.microphoneIcon,
                                ),
                              ),
                              AppGaps.wGap10,
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(StrollImages.nextIcon),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
