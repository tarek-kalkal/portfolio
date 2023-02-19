import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Section1 extends StatefulWidget {
  Section1({Key? key}) : super(key: key);

  @override
  State<Section1> createState() => _Section1State();
}

class _Section1State extends State<Section1> with TickerProviderStateMixin {
  late final AnimationController _git_controller;
  late final AnimationController __linkdin_controller;
  late final AnimationController _web_controller;

  @override
  void initState() {
    super.initState();

    _git_controller = AnimationController(vsync: this);
    __linkdin_controller = AnimationController(vsync: this);
    _web_controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _git_controller.dispose();
    __linkdin_controller.dispose();
    _web_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Transforming business ideas into custom,\nscalable mobile solutions",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: ()=> _launchUrl(Uri.parse('https://github.com/tarek-kalkal')) ,
                        child: MouseRegion(
                          onEnter: (e) => setState(() {
                            _git_controller.forward();
                          }),
                          onExit: (e) => setState(() {
                            _git_controller.reset();
                          }),
                          cursor: SystemMouseCursors.click,
                          child: Lottie.asset(
                            'assets/illustrations/github.json',
                            controller: _git_controller,
                            onLoaded: (composition) {
                              _git_controller..duration = composition.duration;
                            },
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      GestureDetector(
                      onTap: ()=> _launchUrl(Uri.parse('https://www.linkedin.com/in/tarek-kalkal/')) ,
                        child: MouseRegion(
                          onEnter: (e) => setState(() {
                            __linkdin_controller.forward();
                          }),
                          onExit: (e) => setState(() {
                            __linkdin_controller.reset();
                          }),
                          cursor: SystemMouseCursors.click,
                          child: Lottie.asset(
                            'assets/illustrations/Linkedin.json',
                            controller: __linkdin_controller,
                            onLoaded: (composition) {
                              __linkdin_controller
                                ..duration = composition.duration;
                            },
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()=> _launchUrl(Uri.parse('mailto:kalkal.tarek@gmail.com?subject=Dev&body=Test')) ,
                        child: MouseRegion(
                          onEnter: (e) => setState(() {
                            _web_controller.forward();
                          }),
                          onExit: (e) => setState(() {
                            _web_controller.reset();
                          }),
                          cursor: SystemMouseCursors.click,
                          child: Lottie.asset(
                            'assets/illustrations/mail.json',
                            controller: _web_controller,
                            onLoaded: (composition) {
                              _web_controller..duration = composition.duration;
                            },
                            width: 110,
                            height: 110,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Image.asset(
              "assets/illustrations/landing.png",
              height: MediaQuery.of(context).size.width * 0.3,
            )

            // Lottie.asset('assets/landing.json',
            //     height: MediaQuery.of(context).size.width * 0.3),
          ],
        ),
      ),
    );
  }
  Future<void> _launchUrl(Uri _url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
}

