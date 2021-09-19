import 'package:flutter/material.dart';
import 'package:shape_your_body_app/presentation/widgets/4_star.dart';
import 'package:shape_your_body_app/presentation/widgets/5_star.dart';

class CustomTile extends StatelessWidget {
  final String image;
  final List<String> title;
  final String trailing;
  final int starNum;
  final GestureTapCallback onTap;

  const CustomTile(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.trailing,
      @required this.starNum,
      @required this.onTap
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: EdgeInsets.only(top: 0, bottom: 6),
        height: 85,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: onTap,
          leading: Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title[0],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                title[1],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey[600]),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  starNum == 4 ? FourStar(): FiveStar(),
                  SizedBox(width: 5,),
                  Text(
                    title[2],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                trailing,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
