import 'package:flutter/material.dart';
import 'package:practic/color.dart';

class BannerApp extends StatelessWidget {
  final double height;
  final double width;
  const BannerApp({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height * 0.12,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Balance:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 0.001,
                ),
                Text(
                  '1.005 \$',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              width: width * 0.25,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: AppColor.grenn,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Top Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
