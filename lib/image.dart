import 'package:flutter/material.dart';
import 'package:practic/color.dart';

class ASS extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final String titel;
  final String b1;
  const ASS(
      {super.key,
      required this.height,
      required this.width,
      required this.titel,
      required this.image,
      required this.b1});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          width: double.infinity,
          height: height * 0.14,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: height * 0.14,
          padding: EdgeInsets.all(15),
          color: Colors.black.withAlpha(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titel,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        b1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: height * 0.050,
                width: width * 0.20,
                // padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColor.grenn,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'start',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
