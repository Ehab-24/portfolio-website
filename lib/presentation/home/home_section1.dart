import 'package:flutter/material.dart';

import '../globals/colors.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';
import '../globals/utils.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const _SmallView();
        } else if (constraints.maxWidth < 1180) {
          return const _MedView();
        } else {
          return const _LargeView();
        }
      },
    );
  }
}

class _SmallView extends StatelessWidget {
  const _SmallView({super.key});

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    return Container(
      width: w,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: const BoxDecoration(
        color: secondary,
        image: DecorationImage(
          image: AssetImage('assets/images/section1_bk_med.png'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(primary, BlendMode.modulate),
        ),
      ),
      child: Column(
        children: [
          Positioned(
            top: 20,
            child: Center(
              child: Text(
                'EHAB SOHAIL',
                style: Styles.headlineSmall(secondary, fontSize: 20),
              ),
            ),
          ),
          space40v,
          SizedBox(
            width: 300,
            child: Text(
              'I am a computer sceince enthusiast and a flutter hobbyist. My name is Ehab Sohail and I am currently pursuing my bechelors in CS at the Information Technology University of Lahore.',
              textAlign: TextAlign.center,
              style: Styles.bodyLarge(
                secondary,
                fontSize: 16,
              ),
            ),
          ),
          space20v,
          Row(
            children: [
              Container(
                color: secondary,
                width: 4,
                height: 400,
              ),
              space10h,
              Text(
                'FLUTTER\nMAKES\nBEAUTIFUL',
                style: Styles.displayMedium(
                  secondary,
                  fontSize: 48,
                ),
              ),
            ],
          ),
          space20v,
          SizedBox(
            width: 300,
            child: Text(
              'Flutter is a cross-platform development framework of the Dart programming language. It was released by Google is 2017 and has only increased in popularity ever since. Flutter makes it easy to create breathtaking and indulging UI with minimal effort.',
              textAlign: TextAlign.center,
              style: Styles.bodyLarge(
                secondary,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MedView extends StatelessWidget {
  const _MedView({super.key});

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    const h = 780.0;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Container(
            height: h,
            width: w,
            decoration: const BoxDecoration(
              color: secondary,
              image: DecorationImage(
                image: AssetImage('assets/images/section1_bk_med.png'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(primary, BlendMode.modulate),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          child: Center(
            child: Text(
              'EHAB SOHAIL',
              style: Styles.headlineSmall(secondary, fontSize: 22),
            ),
          ),
        ),
        Positioned(
          top: 80,
          right: 4,
          child: SizedBox(
            width: 400,
            child: Text(
              'I am a computer sceince enthusiast and a flutter hobbyist. My name is Ehab Sohail and I am currently pursuing my bechelors in CS at the Information Technology University of Lahore.',
              textAlign: TextAlign.center,
              style: Styles.bodyLarge(secondary, fontSize: 16),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: SizedBox(
            width: 400,
            child: Text(
              'Flutter is a cross-platform development framework of the Dart programming language. It was released by Google is 2017 and has only increased in popularity ever since. Flutter makes it easy to create breathtaking and indulging UI with minimal effort.',
              textAlign: TextAlign.center,
              style: Styles.bodyLarge(secondary, fontSize: 16),
            ),
          ),
        ),
        Positioned(
          left: w / 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: secondary,
                width: 4,
                height: 400,
              ),
              space10h,
              Text(
                'FLUTTER\nMAKES\nBEAUTIFUL',
                style: Styles.displayMedium(
                  secondary,
                  fontSize: 56,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/flutter_logo.png'),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _LargeView extends StatelessWidget {
  const _LargeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    const h = 830.0;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Container(
            height: h,
            width: w,
            decoration: const BoxDecoration(
              color: secondary,
              image: DecorationImage(
                image: AssetImage('assets/images/section1_bk.png'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(primary, BlendMode.modulate),
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: w / 4,
          child: Text(
            'EHAB SOHAIL',
            style: Styles.headlineSmall(secondary),
          ),
        ),
        Positioned(
          top: 120,
          right: 4,
          child: SizedBox(
            width: 400,
            child: Text(
              'I am a computer sceince enthusiast and a flutter hobbyist. My name is Ehab Sohail and I am currently pursuing my bechelors in CS at the Information Technology University of Lahore.',
              textAlign: TextAlign.center,
              style: Styles.bodyLarge(secondary),
            ),
          ),
        ),
        Positioned(
          bottom: 90,
          left: w / 8,
          child: SizedBox(
            width: 400,
            child: Text(
              'Flutter is a cross-platform development framework of the Dart programming language. It was released by Google is 2017 and has only increased in popularity ever since. Flutter makes it easy to create breathtaking and indulging UI with minimal effort.',
              textAlign: TextAlign.center,
              style: Styles.bodyLarge(secondary),
            ),
          ),
        ),
        Positioned(
          left: w / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: secondary,
                width: 4,
                height: 400,
              ),
              space10h,
              Text(
                'FLUTTER\nMAKES\nBEAUTIFUL',
                style: Styles.displayMedium(secondary),
              ),
            ],
          ),
        ),
        const Positioned(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/flutter_logo.png'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
