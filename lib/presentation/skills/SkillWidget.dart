import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/skills/skill.dart';

import '../globals/colors.dart';
import '../globals/constants.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    super.key,
    required this.skill,
  });

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.black12,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            skill.title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        space10v,
        Text(
          skill.desc,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        space10v,
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: childWidgets,
          ),
        )
      ],
    );
  }

  List<Widget> get childWidgets => skill.subskills
      .map((subskill) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: SubskillWidget(skill: subskill),
          ))
      .toList();
}

class SubskillWidget extends StatelessWidget {
  const SubskillWidget({
    super.key,
    required this.skill,
  });

  final Subskill skill;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.remove,
              size: 12.0,
            ),
            space10h,
            Text(
              skill.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        space10v,
        Text(
          skill.desc,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
