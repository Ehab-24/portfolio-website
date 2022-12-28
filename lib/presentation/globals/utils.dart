
import 'package:flutter/material.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

void showSnackBar(BuildContext context, String content) =>
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(content)));

AppBar appBar(String title) => AppBar(
      title: Text(
        title,
      ),
      foregroundColor: Colors.black,
    );