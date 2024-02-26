import 'package:flutter/material.dart';
import 'loginorsign.dart';


import 'bannerimg.dart';






class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  ScrollController controller = ScrollController();
  double controllerOffset = 0.0;
  int index = 0;

  void move() {
    controller.animateTo(controllerOffset + 392,
        curve: Curves.easeIn, duration: const Duration(milliseconds: 500));
  }

  bool isRev = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      move();
      setState(() {
        controllerOffset += 392;
      });
    });

    Future.delayed(const Duration(seconds: 8), () {
      move();
      setState(() {
        controllerOffset += 392;
      });
    });
    super.initState();
  }

  List imgUrl = [
    "assets/images/onboard.jpeg",
    "assets/images/onboard 1.jpeg",
    "assets/images/onbord3.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    //final userProvider = Provider.of<UserProvider>(context, listen: false);

    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              reverse: isRev,
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: imgUrl
                      .map((e) => BannerImages(
                    height: height,
                    width: width,
                    image: e,
                  ))
                      .toList()),
            ),
            SingleChildScrollView(
              reverse: isRev,
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: controllerOffset < 300
                              ? const Color(0xff721c80).withOpacity(0.8)
                              : Colors.grey.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                          300 < controllerOffset && controllerOffset < 600
                              ? const Color(0xff721c80).withOpacity(0.8)
                              : Colors.grey.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                          600 < controllerOffset && controllerOffset < 800
                              ? const Color(0xff721c80).withOpacity(0.8)
                              : Colors.grey.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "The Professional Specialists",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Choose Your HairStyle",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => logorsignin()));

              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff721c80),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff721c80),
                      Color.fromARGB(255, 196, 103, 169),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ));
  }
}

