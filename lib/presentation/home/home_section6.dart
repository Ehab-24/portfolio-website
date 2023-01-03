import 'package:flutter/material.dart';

import '../globals/colors.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Section6 extends StatelessWidget {
  const Section6({super.key});

  @override
  Widget build(BuildContext context) {

    final w = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      color: secondary,
      padding: screenPadding,
      margin: sectionMargin,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Connect with Me',
              style: Styles.headlineLarge(fontSize: w > 1180? 48: w > 600? 40: 36),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green),
              space10h,
              SelectableText(
                '0324 4337587',
                style: Styles.bodySmall(),
              ),
            ],
          ),
          space20v,
          _ContactWidget(
            title: 'ehabs1775@gmail.com',
            link:
                'mailto:ehabs1775@gmail.com?body=${Uri.encodeFull('Dear Mr. Ehab Sohail,\n')}',
            icon: const FaIcon(
              FontAwesomeIcons.google,
              color: Colors.red,
            ),
          ),
          space20v,
          const _ContactWidget(
            link: 'https://github.com/Ehab-24',
            icon: FaIcon(
              FontAwesomeIcons.github,
              color: Colors.white,
            ),
          ),
          space20v,
          const _ContactWidget(
            link: 'https://www.linkedin.com/in/ehab-sohail-7a768223b',
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              color: Colors.blue,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _ContactWidget extends StatelessWidget {
  const _ContactWidget({
    super.key,
    required this.link,
    required this.icon,
    this.title,
  });

  final String link;
  final FaIcon icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        icon,
        space10h,
        SizedBox(
          width: w - 120,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SelectableText(
              title ?? link,
              style: Styles.bodySmall(Colors.redAccent),
              onTap: () => _launchUrl(
                context,
                link,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(BuildContext context, String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            backgroundColor: Colors.black12,
            content: Text(
              'Could not launch url',
              style: Styles.headlineSmall(primary),
            ),
          ),
        );
    }
  }
}
