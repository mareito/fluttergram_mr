import 'package:flutter/material.dart';

class AvatarFavourite extends StatelessWidget {
  final String imgUser;
  final String name;

  AvatarFavourite({this.imgUser, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueAccent, width: 1.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset.zero,
                    blurRadius: 1.0,
                    spreadRadius: 1.0)
              ]),
          padding: EdgeInsets.all(3.0),
          margin: EdgeInsets.all(10.0),
          child: SizedBox(
            height: 70.0,
            width: 70.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  //color: Colors.red,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/${imgUser}'))),
            ),
          ),
        ),
        Text(name)
      ],
    );
  }
}
