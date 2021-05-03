import 'package:flutter/material.dart';

class AvatarGroup extends StatelessWidget {
  final String imgUser1;
  final String imgUser2;

  AvatarGroup({this.imgUser1, this.imgUser2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103,
      width: 83,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                height: 65.0,
                width: 65.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/${imgUser1}')),
                      color: Colors.red),
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 65.0,
                width: 65.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/${imgUser2}')),
                      color: Colors.blue,
                      border: Border.all(color: Colors.white, width: 3.0)),
                ),
              ))
        ],
      ),
    );
  }
}
