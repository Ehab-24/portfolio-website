
import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/globals/constants.dart';

import '../globals/colors.dart';
import '../globals/styles.dart';
import '../widgets/spinning_container.dart';

class Section5 extends StatelessWidget {
  const Section5({super.key});

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
    return Container(
      margin: sectionMargin,
      padding: screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 730,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EDUCATION',
                  style: Styles.headlineLarge(fontSize: 40),
                ),
                space60v,
                _getEducationSpan(
                  'BS Computer Science',
                  'Sep 2021 - Current',
                  'Currently studying as a computer sceince undergraduate at the Information Technology University of Lahore.',
                  '3.81 CGPA',
                  2,
                ),
                space60v,
                _getEducationSpan(
                  'FSc Pre- engineering',
                  'Sep 2019 - June 2021',
                  'Completed my intermediate degree from Crescent College Shadman.',
                  '1080 / 1100',
                  2,
                ),
                space60v,
                _getEducationSpan(
                  'Matric',
                  'April 2017 - March 2019',
                  'Completed my matriculation degree from Unique High School Campus 113-A.',
                  '1033 / 1100',
                  2,
                ),
              ],
            ),
          ),
          space60v,
          const Align(
            child: SpinningContainer(
              duration: d1000,
              children: [
                __SpinningContainerChild(text: 'hard work'),
                __SpinningContainerChild(text: 'vision'),
                __SpinningContainerChild(text: 'persistence'),
                __SpinningContainerChild(text: 'modesty'),
              ],
            ),
          ),
          space60v,
          Text(
            'TRAITS',
            style: Styles.headlineLarge(fontSize: 40),
          ),
          space40v,
          _getTraitSpan(
            'Elite self-learning and problem solving capabilities.',
            2,
          ),
          spacev(6.0),
          _getTraitSpan(
            'Great thirst for skills development.',
            2,
          ),
          spacev(6.0),
          _getTraitSpan(
            'A strong team player who loves to work with new and capable people.',
            2,
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
    return Container(
      margin: sectionMargin,
      padding: screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 730,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EDUCATION',
                  style: Styles.headlineLarge(fontSize: 40),
                ),
                space60v,
                _getEducationSpan(
                  'BS Computer Science',
                  'Sep 2021 - Current',
                  'Currently studying as a computer sceince undergraduate at the Information Technology University of Lahore.',
                  '3.81 CGPA',
                  1,
                ),
                space60v,
                _getEducationSpan(
                  'FSc Pre- engineering',
                  'Sep 2019 - June 2021',
                  'Completed my intermediate degree from Crescent College Shadman.',
                  '1080 / 1100',
                  1,
                ),
                space60v,
                _getEducationSpan(
                  'Matric',
                  'April 2017 - March 2019',
                  'Completed my matriculation degree from Unique High School Campus 113-A.',
                  '1033 / 1100',
                  1,
                ),
              ],
            ),
          ),
          space80v,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TRAITS',
                    style: Styles.headlineLarge(fontSize: 40),
                  ),
                  space40v,
                  _getTraitSpan(
                    'Elite self-learning and problem solving capabilities.',
                    1,
                  ),
                  spacev(6.0),
                  _getTraitSpan(
                    'Great thirst for skills development.',
                    1,
                  ),
                  spacev(6.0),
                  _getTraitSpan(
                    'A strong team player who loves to work with new and capable people.',
                    1,
                  ),
                ],
              ),
              const SpinningContainer(
                duration: d1000,
                children: [
                  __SpinningContainerChild(text: 'hard work'),
                  __SpinningContainerChild(text: 'vision'),
                  __SpinningContainerChild(text: 'persistence'),
                  __SpinningContainerChild(text: 'modesty'),
                ],
              ),
            ],
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
    return Container(
      margin: sectionMargin,
      padding: screenPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 730,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EDUCATION',
                  style: Styles.headlineLarge(),
                ),
                space60v,
                _getEducationSpan(
                  'BS Computer Science',
                  'Sep 2021 - Current',
                  'Currently studying as a computer sceince undergraduate at the Information Technology University of Lahore.',
                  '3.81 CGPA',
                  0,
                ),
                space60v,
                _getEducationSpan(
                  'FSc Pre- engineering',
                  'Sep 2019 - June 2021',
                  'Completed my intermediate degree from Crescent College Shadman.',
                  '1080 / 1100',
                  0,
                ),
                space60v,
                _getEducationSpan(
                  'Matric',
                  'April 2017 - March 2019',
                  'Completed my matriculation degree from Unique High School Campus 113-A.',
                  '1033 / 1100',
                  0,
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
                space40v,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'TRAITS',
                    style: Styles.headlineLarge(),
                  ),
                ),
                space60v,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _getTraitSpan(
                      'Elite self-learning and problem solving capabilities.',
                      0,
                    ),
                    spacev(6.0),
                    _getTraitSpan(
                      'Great thirst for skills development.',
                      0,
                    ),
                    spacev(6.0),
                    _getTraitSpan(
                      'A strong team player who loves to work with new and capable people.',
                      0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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

Widget _getEducationSpan(String degreeName, String timePeriod,
        String description, String marks, int device) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: device == 0
              ? 600
              : device == 1
                  ? 500
                  : 210,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '•  $degreeName   |   $timePeriod\n',
                  style: Styles.bodyLarge(primaryLight,
                      fontSize: 20 - (device * 2)),
                ),
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: device == 0 ? 20.0 : 16.0,
                        top: device == 0 ? 12.0 : 8.0),
                    child: Text(
                      description,
                      style: Styles.bodyMedium(fontSize: 20 - (device * 2)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          marks,
          style: Styles.headlineSmall(primary, fontSize: 24 - (device * 2)),
        ),
      ],
    );

Widget _getTraitSpan(String trait, int device) => Row(
      children: [
        Text(
          '-',
          style: Styles.bodyMedium(fontSize: 20 - (device * 2)),
        ),
        Padding(
          padding: EdgeInsets.only(left: device == 0 ? 20.0 : 16.0),
          child: SizedBox(
            width: device == 0
                ? 400
                : device == 1
                    ? 360
                    : 280,
            child: Text(
              trait,
              style: Styles.bodyMedium(fontSize: 20 - (device * 2)),
            ),
          ),
        ),
      ],
    );
