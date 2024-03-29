import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  String? text;

  ContainerWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(00),
          bottomLeft: Radius.circular(90),
        ),
        gradient: LinearGradient(
            colors: [(Colors.deepPurple), (Colors.black)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20, top: 100),
              alignment: Alignment.bottomRight,
              child: Text(
                text!,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}