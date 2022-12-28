import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/home/home_section1.dart';
import 'package:protfolio_website/presentation/home/home_section3.dart';

import '../globals/colors.dart';
import 'home_section2.dart';
import 'home_section4.dart';
import 'home_section5.dart';
import 'home_section6.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/home_bk.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(secondary, BlendMode.modulate),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Section1(),
                Section2(),
                Section3(),
                Section4(),
                Section5(),
                Section6(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
