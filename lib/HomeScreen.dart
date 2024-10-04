import 'package:flutter/material.dart';
import 'package:practic/color.dart';
import 'package:practic/first.dart';
import 'package:practic/image.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 28, horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Muhamed',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.grey[600],
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        Icons.call,
                        color: Colors.grey[600],
                        size: 25,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            BannerApp(height: height, width: width),
            SizedBox(
              height: height * 0.05,
            ),
            ASS(
                height: height,
                width: width,
                titel: 'Begannir',
                image: 'assets/image/workout1.png',
                b1: 'for beginners'),
            SizedBox(height: height * 0.02),
            ASS(
                height: height,
                width: width,
                titel: 'Athlete',
                image: 'assets/image/workout2.png',
                b1: '3-5 months of exprience'),
            SizedBox(height: height * 0.02),
            ASS(
                height: height,
                width: width,
                titel: 'Bodybuilder',
                image: 'assets/image/workout3.png',
                b1: '1-2 years of exprience'),
          ],
        ),
      )),
    );
  }
}
