import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/widgets/page_view.dart';

import '../../classes/project.dart';
import '../globals/colors.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';
import '../globals/utils.dart';

import 'package:url_launcher/url_launcher.dart';

final List<Project> _projects = [
  Project(
    key: UniqueKey(),
    title: 'Scribe',
    imagePath: 'assets/images/scribe_1.jpg',
    readMe:
        'Scribe makes it easy to quickly lookup word definitions with examples and synonyms. You can also see what words you have searched in the past. For this project, I used the free package of \'Oxford Dictionaries API\' to get the JSON data. I then serialized it into five heirarchical classes, namely, Word, LexicalEntry, Entry, Sense and Subsense. Each Word contains a list of LexicalEntry. Each LexicalEntry contains a list of Entry and so on.\n\nIt is built using the BLoC pattern where you have four layers, namely:\n  - Presentation  - Business Logic Component  - Domain  - Reository',
    githubLink: 'https://github.com/Ehab-24/scribe.git',
  ),
  Project(
    key: UniqueKey(),
    title: 'ultimate text editor',
    imagePath: 'assets/images/text_editor_1.png',
    readMe:
        'Ultimate Text Editor is a console based text editor written entirely in C++ with no GUI.\nThis was one of my very first OOP projects, and one of my hardest yet. It is a console based text editing software where you can edit multiples documents simultaneously, save and open plain text files and put passwords on them which will automatically encrypt all data for the outsiders. Although there is no GUI involved, I still tried my best to add aesthetics using special ASCII symbols and console colors. The software provides several different functionalities of common text editors such as, find and replace, words and lines count, opening multiple files, file encryption, a mini word game, common shorcuts for faster editing and much more.',
    githubLink: 'https://github.com/Ehab-24/text-editor.git',
  ),
  Project(
    key: UniqueKey(),
    title: 'Algorithm Visualizer',
    imagePath: 'assets/images/algo_viz_2.png',
    readMe:
        'Algorithm visualizer is built using the flutter framework and hosted on firebase.\nThis web application is designed specifically for those who are new to data structures and algorithms in computer science, as it is a tool to visualize some of the most famous pathfinding and sorting algorithms out there.\n\nPathfinding:\n  - A* search  - Dijkstra\'s algorithm  - Best first search  - Breadth first search  - Depth first search\n\nSorting:\n  - Selection sort  - Insertion sort  - Quick sort  - Heap sort  - Bubble sort  - Quick sort',
    githubLink: 'https://github.com/Ehab-24/algo-visualizer.git',
    webLink: 'https://algo-visualizer-cdab4.web.app/',
  ),
  Project(
    key: UniqueKey(),
    title: 'Time Table App',
    imagePath: 'assets/images/timetable_app_1.jpg',
    readMe:
        'This is a fully functional (currently in progress) mobile application that makes it easy and fun to work with time schedules.\nOne of my close friends suggested the idea of creating an app that would make it easy for him to manage his busy schefule, and so I started this project. You can create multiple time tables and specify time slots separately for days of week. You can add reminders for special occassions, events or meetups and can easily modify, and create or delete items in your schedule.',
    githubLink: 'https://github.com/Ehab-24/timetable-app-Uncomplete-.git',
  ),
  Project(
    key: UniqueKey(),
    title: 'Snake Game',
    imagePath: 'assets/images/snake_game_1.png',
    readMe: '''
  A CLI based implementation of the famous Nokia Snake game written entirely in C++.\n
  - Rules:
  
  1. Each player can move in any of the four directions (up, left , down, right).
  2. Each player must avoid hitting obstacles, other players and themselves or else they are eliminated.
  3. Each player grows 1 bit by eating the yellow food, 5 bits from green food and 10 bits by the red one.
  4. The game progressively gets faster.
  5. There are three levels, each with higher difficulty than the previous one.
  6. Player with the highest score at the end score wins the game.
''',
    githubLink: 'https://github.com/Ehab-24/snake-game.git',
  ),
];

class Section3 extends StatefulWidget {
  const Section3({super.key});

  @override
  State<Section3> createState() => _Section3State();
}

class _Section3State extends State<Section3> {
  final ValueNotifier<int> projectIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return _SmallView(
            projectIndex: projectIndex,
          );
        } else if (constraints.maxWidth < 1180) {
          return _MedView(
            projectIndex: projectIndex,
          );
        } else {
          return _LargeView(
            projectIndex: projectIndex,
          );
        }
      },
    );
  }
}

class _SmallView extends StatelessWidget {
  const _SmallView({
    super.key,
    required this.projectIndex,
  });

  final ValueNotifier<int> projectIndex;

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    return Container(
      width: w,
      margin: const EdgeInsets.only(top: 80),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'PROJECTS',
              style: Styles.headlineLarge(fontSize: 36),
            ),
          ),
          space40v,
          ValueListenableBuilder(
            valueListenable: projectIndex,
            builder: (context, index, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: _ProjectDescription(
                      project: _projects[index],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ValueListenableBuilder(
                      valueListenable: projectIndex,
                      builder: (context, index, child) {
                        return MPageView(
                          indexNotifier: projectIndex,
                          children: _projects
                              .map(
                                (p) => _ProjectContainer(
                                  project: p,
                                ),
                              )
                              .toList(),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _MedView extends StatelessWidget {
  const _MedView({
    super.key,
    required this.projectIndex,
  });

  final ValueNotifier<int> projectIndex;

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    return Container(
      width: w,
      margin: const EdgeInsets.only(top: 80, bottom: 80),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'PROJECTS',
              style: Styles.headlineLarge(fontSize: 40),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: projectIndex,
            builder: (context, index, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder(
                    valueListenable: projectIndex,
                    builder: (context, index, child) {
                      return MPageView(
                        indexNotifier: projectIndex,
                        children: _projects
                            .map(
                              (p) => _ProjectContainer(
                                project: p,
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                  _ProjectDescription(
                    project: _projects[index],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _LargeView extends StatelessWidget {
  const _LargeView({
    super.key,
    required this.projectIndex,
  });

  final ValueNotifier<int> projectIndex;

  @override
  Widget build(BuildContext context) {
    final w = screenWidth(context);
    return Container(
      width: w,
      padding: screenPadding,
      margin: const EdgeInsets.only(bottom: 100),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PROJECTS',
            style: Styles.headlineLarge(),
          ),
          ValueListenableBuilder(
            valueListenable: projectIndex,
            builder: (context, index, _) {
              return Row(
                children: [
                  const Spacer(),
                  ValueListenableBuilder(
                    valueListenable: projectIndex,
                    builder: (context, index, child) {
                      return MPageView(
                        indexNotifier: projectIndex,
                        children: _projects
                            .map(
                              (p) => _ProjectContainer(
                                project: p,
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                  const Spacer(),
                  _ProjectDescription(
                    project: _projects[index],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ProjectContainer extends StatelessWidget {
  const _ProjectContainer({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    const h = 830.0;
    final w = MediaQuery.of(context).size.width;
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, -0.001)
        ..rotateY(0.18),
      alignment: Alignment.center,
      child: SizedBox(
        height: h * 0.5,
        width: w <= 600? w * 0.8: w * 0.44,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(project.imagePath),
              fit: BoxFit.fill,
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 6.0,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectDescription extends StatefulWidget {
  const _ProjectDescription({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  State<_ProjectDescription> createState() => __ProjectDescriptionState();
}

class __ProjectDescriptionState extends State<_ProjectDescription> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    //0 for desktop, 1 for tablet, 2 for mobile.
    int device = 0;
    if (w <= 600) {
      device = 2;
    } else if (w <= 1180) {
      device = 1;
    }

    return AnimatedSwitcher(
      duration: d800,
      switchInCurve: Curves.easeOutQuad,
      switchOutCurve: Curves.easeInQuad,
      child: SizedBox(
        key: widget.project.key,
        height: w <= 600? 500: null,
        width: device == 2? w * 0.9: w * 0.4,
        child: Column(
          crossAxisAlignment: device == 2? CrossAxisAlignment.start: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              widget.project.title.toUpperCase(),
              style: Styles.headlineSmall(primary, fontSize: 22 - (device * 2)),
            ),
            space20v,
            SelectableText(
              widget.project.readMe,
              style: Styles.bodyMedium(fontSize: 20 - (device * 2)),
            ),
            space20v,
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: SelectableText(
                widget.project.githubLink,
                style: Styles.bodySmall(Colors.redAccent),
                onTap: () => _launchUrl(widget.project.githubLink),
              ),
            ),
            if (widget.project.webLink != null) space10v,
            if (widget.project.webLink != null)
              MouseRegion(
              cursor: SystemMouseCursors.click,
                child: SelectableText(
                  widget.project.webLink!,
                  style: Styles.bodySmall(Colors.redAccent),
                  onTap: () => _launchUrl(widget.project.webLink!),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            backgroundColor: secondary,
            content: Text(
              'Could not launch url',
              style: Styles.headlineSmall(primary),
            ),
          ),
        );
    }
  }
}
