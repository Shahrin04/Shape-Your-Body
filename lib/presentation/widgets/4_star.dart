import 'package:flutter/material.dart';

class FourStar extends StatelessWidget {
  const FourStar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orangeAccent[100], size: 14,),
      ],
    );
  }
}
