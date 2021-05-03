import 'package:flutter/material.dart';
import 'package:tarea_curso/src/widgets/avatar_chat.dart';
import 'package:tarea_curso/src/widgets/avatar_group.dart';

class ChatItem extends StatelessWidget {
  final bool isActive;
  final String imgUser1;
  final String imgUser2;
  final String nameItem;
  final String subtitulo;

  ChatItem(
      {this.imgUser1,
      this.imgUser2 = '',
      this.isActive = false,
      this.nameItem,
      this.subtitulo});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: [
            SizedBox(
              width: 10.0,
            ),
            if (imgUser2 == null || imgUser2.length == 0)
              SizedBox(
                width: 83.0,
                height: 103.0,
                child: AvatarChat(
                  isActive: this.isActive,
                  imgUser: imgUser1,
                ),
              ),
            if (imgUser2 != null && imgUser2.length > 0)
              SizedBox(
                width: 83.0,
                height: 103.0,
                child: AvatarGroup(
                  imgUser1: imgUser1,
                  imgUser2: imgUser2,
                ),
              ),
            SizedBox(
              width: 20.0,
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameItem,
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitulo,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
