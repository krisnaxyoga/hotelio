import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoteltutorial/config/app_asset.dart';
import 'package:hoteltutorial/config/app_color.dart';
import 'package:hoteltutorial/config/app_route.dart';
import 'package:hoteltutorial/widget/button_custom.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAsset.bgIntro,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Great Life\nStarts Here',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'More than just a hotel',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonCustom(
                  label: 'Get Started',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AppRoute.signin);
                  },
                  isExpand: true,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
