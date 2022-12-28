
class Skill {
  String title, desc;
  List<Subskill> subskills;

  Skill({
    required this.title,
    required this.desc,
    this.subskills = const [],
  });
}

class Subskill {
  String title, desc;
  Subskill({
    required this.title,
    required this.desc,
  });
}