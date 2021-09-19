import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  const CustomRaisedButton({Key key, @required this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      elevation: 0.5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Icon(icon, color: color),
    );
  }
}
