import 'package:flutter/material.dart';

import '../widgets/section1.dart';
import '../widgets/section2.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: ListView(
        physics: PageScrollPhysics(),
        children: [Section1(), Section2()],
      ),
    );
  }
}
