import 'package:flutter/cupertino.dart';

class Project{
  String title, readMe, githubLink, imagePath;
  String? webLink;
  Key? key;

  Project({
    this.key,
    required this.title,
    required this.githubLink,
    required this.readMe,
    required this.imagePath,
    this.webLink,
  });
}