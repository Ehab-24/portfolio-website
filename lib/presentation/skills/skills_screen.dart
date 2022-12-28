import 'package:flutter/material.dart';

import '../globals/colors.dart';
import 'SkillWidget.dart';
import 'constants.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLight,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: mySkills
              .map(
                (skill) => Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: SkillWidget(skill: skill),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
