import 'package:flutter/material.dart';
import 'package:shape_your_body_app/utils/universal_variables.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final List<Widget> actions;

  const CustomAppBar({Key key, @required this.leading, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: UniversalVariables.grey_light,
      child: AppBar(
         elevation: 0.0,
        backgroundColor: UniversalVariables.grey_light,
        leading: leading,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 30);
}
