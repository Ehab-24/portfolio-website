import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/globals/constants.dart';
import 'package:protfolio_website/presentation/globals/utils.dart';

import '../globals/colors.dart';
import '../globals/styles.dart';
import '../widgets/spinning_container.dart';

class Section5 extends StatelessWidget {
  const Section5({super.key});

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    const h = 700.0;

    return Container(
      width: w,
      height: h,
      margin: sectionMargin,
      // color: Colors.black12,
      padding: screenPadding,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'EDUCATION',
                    style: Styles.headlineLarge,
                  ),
                  space60v,
                  _getEducationSpan(
                    'BS Computer Science',
                    'Sep 2021 - Current',
                    'Currently studying as a computer sceince undergraduate at the Information Technology University of Lahore.',
                    '3.81 CGPA',
                  ),
                  space60v,
                  _getEducationSpan(
                    'FSc Pre- engineering',
                    'Sep 2019 - June 2021',
                    'Completed my intermediate degree from Crescent College Shadman.',
                    '1080 / 1100',
                  ),
                  space60v,
                  _getEducationSpan(
                    'Matric',
                    'April 2017 - March 2019',
                    'Completed my matriculation degree from Unique High School Campus 113-A.',
                    '1033 / 1100',
                  ),
                ],
              ),
            ),
            spaceh(200),
            SizedBox(
              width: 500,
              child: Column(
                children: [
                  const SpinningContainer(
                    duration: d1000,
                    children: [
                      __SpinningContainerChild(text: 'hard work'),
                      __SpinningContainerChild(text: 'vision'),
                      __SpinningContainerChild(text: 'persistence'),
                      __SpinningContainerChild(text: 'modesty'),
                    ],
                  ),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'TRAITS',
                      style: Styles.headlineLarge,
                    ),
                  ),
                  space60v,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _getTraitSpan(
                        'Elite self-learning and problem solving capabilities.',
                      ),
                      spacev(6.0),
                      _getTraitSpan(
                        'Great thirst for skills development.',
                      ),
                      spacev(6.0),
                      _getTraitSpan(
                        'A strong team player who loves to work with new and capable people.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getEducationSpan(String degreeName, String timePeriod,
          String description, String marks) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 600,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '•  $degreeName   |   $timePeriod\n',
                    style: Styles.bodyLarge(primaryLight),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 12.0),
                      child: Text(
                        description,
                        style: Styles.bodyMedium(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            marks,
            style: Styles.headlineSmall(primary),
          ),
        ],
      );

  Widget _getTraitSpan(String trait) => Row(
        children: [
          Text(
            '-',
            style: Styles.bodyMedium(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width: 400,
              child: Text(
                trait,
                style: Styles.bodyMedium(),
              ),
            ),
          ),
        ],
      );
}

class __SpinningContainerChild extends StatelessWidget {
  const __SpinningContainerChild({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 150,
      decoration: const BoxDecoration(
        color: secondary,
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: Colors.black87,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        text.toUpperCase(),
        style: Styles.headlineSmall(primary),
      ),
    );
  }
}
