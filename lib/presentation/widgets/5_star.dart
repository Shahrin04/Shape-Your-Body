import 'package:flutter/material.dart';

class FiveStar extends StatelessWidget {
  const FiveStar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
        Icon(Icons.star, color: Colors.orange[600], size: 14,),
      ],
    );
  }
}
