import 'package:flutter/material.dart';
import 'package:shape_your_body_app/presentation/widgets/custom_raised_button.dart';

import 'appBar.dart';

class ShapeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;

  const ShapeAppBar({Key key, @required this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leading: SizedBox(
        width: 55,
        child: CustomRaisedButton(icon: Icons.widgets_outlined),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 30);
}
