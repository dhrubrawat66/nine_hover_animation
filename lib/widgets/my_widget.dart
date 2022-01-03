import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double bottom = -40;
  bool isAnimated = false;
  double contHeight = 400;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 400,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (a) {
          setState(() {
            bottom = 120;
            isAnimated = true;
            contHeight = 320;
          });
        },
        onExit: (a) {
          setState(() {
            bottom = -40;
            isAnimated = false;
            contHeight = 400;
          });
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                alignment: Alignment.bottomCenter,
                duration: const Duration(milliseconds: 6000),
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: isAnimated ? Colors.black26 : Colors.white,
                      offset: const Offset(3, 3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    Text(
                      "Some Famous",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "UI/UI Designer",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              alignment: Alignment.topCenter,
              width: 300,
              height: contHeight,
              decoration: BoxDecoration(
                borderRadius: isAnimated
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                    : BorderRadius.circular(30),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/236x/36/aa/35/36aa358aa30a94ccc4e04a6ed5ac4b97.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              bottom: bottom,
              left: 20,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.green,
                  size: 30,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              bottom: bottom,
              left: 20,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Icon(
                  FontAwesomeIcons.facebookF,
                  size: 30,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              bottom: bottom,
              left: 78,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              bottom: bottom,
              left: 20,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Icon(
                  FontAwesomeIcons.facebookF,
                  size: 30,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
