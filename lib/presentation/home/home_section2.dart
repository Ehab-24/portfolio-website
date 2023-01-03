import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/globals/utils.dart';

import '../globals/colors.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'ABOUT ME',
              style: Styles.headlineLarge(fontSize: 36),
            ),
          ),
          space40v,
          Align(
            child: Container(
              width: 240,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cover_photo.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.elliptical(120, 160),
                  right: Radius.elliptical(120, 160),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          space40v,
          Text(
            'THE STORY I WANT\n   TO WRITE',
            style: Styles.headlineSmall(primary, fontSize: 18),
          ),
          space20v,
          Text(
            'I beleive that every man is given a pen at birth, with which he can write his own fate. Would it not be a waste to never use it? Therefore, I am working...learning to use that pen, and I will keep trying until from the very misery of my failures is born something beautiful. Something that inspires others to push their limits, and persuades me to yet again drown myself into the filth of this world.\nI have an unrest in me, a fire that is often reduced to a single flare but yet somehow manages to recover its energy and burn brighter than ever.\nI want this fire to live, I want to jump in it with my dreams of revolution and wait petiently for it to clear a path for me. A path that leads to an unseen end, an epilogue written with no regrets.',
            textAlign: TextAlign.center,
            style: Styles.bodyMedium(fontSize: 16),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'ABOUT ME',
              style: Styles.headlineLarge(fontSize: 40),
            ),
          ),
          space40v,
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    'This is not very optimized as it builds the entire tree any time anything changes, however it does show the basics of how you can easily bind a ChangeNotifier to the tree and trigger rebuilds in a very simple way.',
                    style: Styles.bodyMedium(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 260,
                  height: 330,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/cover_photo.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.elliptical(120, 180),
                      right: Radius.elliptical(120, 180),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          space40v,
          Text(
            'THE STORY I WANT\n   TO WRITE',
            style: Styles.headlineSmall(primary, fontSize: 20),
          ),
          space20v,
          Align(
            child: SizedBox(
              width: 600,
              child: Text(
                'I beleive that every man is given a pen at birth, with which he can write his own fate. Would it not be a waste to never use it? Therefore, I am working...learning to use that pen, and I will keep trying until from the very misery of my failures is born something beautiful. Something that inspires others to push their limits, and persuades me to yet again drown myself into the filth of this world.\nI have an unrest in me, a fire that is often reduced to a single flare but yet somehow manages to recover its energy and burn brighter than ever.\nI want this fire to live, I want to jump in it with my dreams of revolution and wait petiently for it to clear a path for me. A path that leads to an unseen end, an epilogue written with no regrets.',
                textAlign: TextAlign.center,
                style: Styles.bodyMedium(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ABOUT ME',
            style: Styles.headlineLarge(),
          ),
          Row(
            children: [
              const Spacer(),
              SizedBox(
                width: w * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const Alignment(-0.8, -0.8),
                      child: Text(
                        'THE STORY I WANT\n   TO WRITE',
                        style: Styles.headlineSmall(primary),
                      ),
                    ),
                    space40v,
                    Text(
                      'I beleive that every man is given a pen at birth, with which he can write his own fate. Would it not be a waste to never use it? Therefore, I am working...learning to use that pen, and I will keep trying until from the very misery of my failures is born something beautiful. Something that inspires others to push their limits, and persuades me to yet again drown myself into the filth of this world.\nI have an unrest in me, a fire that is often reduced to a single flare but yet somehow manages to recover its energy and burn brighter than ever.\nI want this fire to live, I want to jump in it with my dreams of revolution and wait petiently for it to clear a path for me. A path that leads to an unseen end, an epilogue written with no regrets.',
                      textAlign: TextAlign.center,
                      style: Styles.bodyMedium(),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 3),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    height: 360,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/cover_photo.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(150, 200),
                        right: Radius.elliptical(150, 200),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  space80v,
                  SizedBox(
                    width: 280,
                    child: Text(
                      'This is not very optimized as it builds the entire tree any time anything changes, however it does show the basics of how you can easily bind a ChangeNotifier to the tree and trigger rebuilds in a very simple way.',
                      style: Styles.bodyMedium(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
