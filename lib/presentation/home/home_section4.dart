import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/globals/constants.dart';
import 'package:protfolio_website/presentation/widgets/longbar_button.dart';

import '../globals/colors.dart';
import '../globals/styles.dart';

class Section4 extends StatelessWidget {
  const Section4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 950,
      height: 710,
      child: Row(
        children: [
          LongbarButton(
            width: 300,
            height: 710,
            onPressed: () {},
            backgroundDecoration: const DecorationImage(
              image: AssetImage(
                'assets/images/flutter_skill_bk.png',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(44, 44, 44, 1), BlendMode.multiply),
            ),
            content: 'As of last semester, Flutter has been my primary focus and needless to say, I have had loads of fun while playing with it. I learnt about different state management techniques and patterns like notifiers and BLoC. I learnt about networking, using firebase as a backend service, creating beautiful interfaces with sleek animations and most importantly, I learnt about architectural design patterns, such as Domain-Driven Design, the repository pattern, so that my code is readable and maintainable.',
            foregroundColor: secondary,
          ),
          spaceh(25),
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      LongbarButton(
                        backgroundDecoration: const DecorationImage(
                          image: AssetImage(
                            'assets/images/cpp_skill_bk.jpg',
                          ),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Color.fromRGBO(66, 66, 66, 1),
                              BlendMode.multiply),
                        ),
                        onPressed: () {},
                        width: 300,
                        height: 220,
                        content: 'C++ was my very first programming language and will always have a special place in my heart. To me, it still feels the most comfortable, perhaps because it provides greater control and has a statically typed nature.',
                        foregroundColor: secondary,
                      ),
                      spacev(25),
                      const SizedBox(
                        width: 300,
                        height: 220,
                        child: Center(
                          child: Text(
                            'SKILLS',
                            style: Styles.headlineLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                  spaceh(25),
                  LongbarButton(
                    backgroundDecoration: const DecorationImage(
                      image: AssetImage(
                        'assets/images/others_skill_bk.jpg',
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromRGBO(66, 66, 66, 1), BlendMode.multiply),
                    ),
                    onPressed: () {},
                    width: 300,
                    height: 465,
                    content: 'I have experience in design tools such as figma, rive and illustrator, databases like firebase firestore and SQFlite, understanding of low level streams and sinks, sockets and http request and response cycles. Moreover, I have good knowledge of algorithms and a strong grasp of data structures to implement them.',
                    foregroundColor: secondary,
                  ),
                ],
              ),
              spacev(25),
              LongbarButton(
                backgroundDecoration: const DecorationImage(
                  image: AssetImage(
                    'assets/images/personal_skill_bk.jpg',
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(44, 44, 44, 1), BlendMode.multiply),
                ),
                onPressed: () {},
                width: 625,
                height: 220,
                content: 'A bright student with thirst for knowledge is what I have become over past few years. I am someone who takes his responsibilities solemnly and is serious about delivering what is asked of him. I welcome guidance by people who are levels ahead of me and love to work in the company of capable people. I am a self-learner, now trained enough to find a path even when the only thing visible is a single next step.',
                foregroundColor: secondary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
