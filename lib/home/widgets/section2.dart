import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Transforming business ideas into custom,\nscalable mobile solutions",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Image.asset(
              "assets/illustrations/landing.png",
              height: MediaQuery.of(context).size.width * 0.3,
            )
          ],
        ),
      ),
    );
  }
}
