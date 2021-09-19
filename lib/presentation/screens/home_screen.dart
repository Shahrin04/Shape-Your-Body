import 'package:flutter/material.dart';
import 'package:shape_your_body_app/presentation/widgets/custom_raised_button.dart';
import 'package:shape_your_body_app/presentation/widgets/custom_tile.dart';
import 'package:shape_your_body_app/presentation/widgets/shape_appBar.dart';
import 'package:shape_your_body_app/utils/universal_variables.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShapeAppBar(actions: [
        SizedBox(
          width: 55,
          child: CustomRaisedButton(
            icon: Icons.notifications,
            color: UniversalVariables.purple,
          ),
        ),
      ]),
      body: Container(
        color: UniversalVariables.grey_light,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Hey John!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17))),
                SizedBox(
                  height: 2,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Shape Your Body',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Image.asset(
                      'assets/cartoon-backpacker.jpg',
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '60% off',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 27),
                          )),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Mar 14 - Mar 20',
                              style: TextStyle(fontSize: 15))),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RaisedButton(
                          onPressed: () {},
                          elevation: 0.5,
                          color: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Text(
                            'Join GYM',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Popular Course',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text('See all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: UniversalVariables.purple)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTile(
                        onTap: () {},
                        starNum: 4,
                        image: 'assets/boxing-gloves.png',
                        title: [
                          'Lifestyle Pro Exercise',
                          '2 hours 45 minutes',
                          '864 Review'
                        ],
                        trailing: '\$20'),
                    CustomTile(
                        onTap: () {},
                        starNum: 5,
                        image: 'assets/healthy-food.png',
                        title: [
                          'Healthy Food Tips & Tricks',
                          '1 hours 45 minutes',
                          '364 Review'
                        ],
                        trailing: '\$10'),
                    CustomTile(
                        onTap: () {},
                        starNum: 4,
                        image: 'assets/basketball-ball.png',
                        title: [
                          'Daily Various Sports',
                          '3 hours 45 minutes',
                          '564 Review'
                        ],
                        trailing: '\$15'),
                    CustomTile(
                        onTap: () {},
                        starNum: 4,
                        image: 'assets/boxing-gloves.png',
                        title: [
                          'Lifestyle Pro Exercise',
                          '2 hours 45 minutes',
                          '864 Review'
                        ],
                        trailing: '\$20'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
