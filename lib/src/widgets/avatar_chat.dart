import 'package:flutter/material.dart';

class AvatarChat extends StatelessWidget {
  final bool isActive;
  final String imgUser;

  AvatarChat({this.isActive = false, this.imgUser});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83.0,
      width: 103.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
              height: 83.0,
              width: 83.0,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/${imgUser}'))))),
          if (this.isActive)
            Positioned(
                right: 7,
                bottom: 7,
                child: Container(
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset.zero,
                                blurRadius: 2.0,
                                spreadRadius: 2.0)
                          ]),
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
