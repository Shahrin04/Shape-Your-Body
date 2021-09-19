import 'package:flutter/material.dart';
import 'package:shape_your_body_app/utils/universal_variables.dart';

class ListScreen extends StatelessWidget {
  String text;
  ListScreen({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UniversalVariables.grey_light,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
