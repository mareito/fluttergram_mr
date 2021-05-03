import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tarea_curso/src/widgets/avatar_favourite.dart';
import 'package:tarea_curso/src/ui_shared/behavior.dart';
import 'package:tarea_curso/src/widgets/chat_item.dart';
import 'package:tarea_curso/src/widgets/input.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterGram'),
      ),
      body: ScrollConfiguration(
        behavior: NeverGrowthScroll(),
        child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Container(
                    padding: EdgeInsets.only(
                        bottom: 10.0, top: 10.0, left: 15.0, right: 15.0),
                    child: TextField(
                      style: TextStyle(fontSize: 20.0),
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0.0),
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(25.0)),
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[500],
                          )),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _getFavoritos(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: _getConversaciones(),
                )
              ],
            )),
      ),
    );
  }

  List<Widget> _getFavoritos() {
    List<Widget> favoritos = [];
    favoritos.add(AvatarFavourite(
      imgUser: 'foto1.jpg',
      name: 'Mario',
    ));
    favoritos.add(AvatarFavourite(
      imgUser: 'foto2.jpg',
      name: 'Diana',
    ));
    favoritos.add(AvatarFavourite(
      imgUser: 'foto3.jpg',
      name: 'Mariana',
    ));
    favoritos.add(AvatarFavourite(
      imgUser: 'foto4.jpg',
      name: 'Juan',
    ));
    return favoritos;
  }

  List<Widget> _getConversaciones() {
    List<Widget> conversaciones = [];
    conversaciones.add(ChatItem(
      imgUser1: 'foto5.jpg',
      isActive: true,
      nameItem: 'Jessica Park',
      subtitulo: 'That\'s hilarious, really? - Feb 03',
    ));
    conversaciones.add(ChatItem(
      imgUser1: 'foto6.jpg',
      isActive: true,
      nameItem: 'Daniel Lee',
      subtitulo: 'Why? - Feb 03',
    ));
    conversaciones.add(ChatItem(
      imgUser1: 'foto7.jpg',
      imgUser2: 'foto8.jpg',
      nameItem: 'The Gang',
      subtitulo: 'Hello, Party people! - Feb 03',
    ));
    conversaciones.add(ChatItem(
      imgUser1: 'foto10.jpg',
      isActive: false,
      nameItem: 'Josh Yoo',
      subtitulo: 'Nice photo! Where are you? - Feb 03',
    ));
    conversaciones.add(ChatItem(
      imgUser1: 'foto9.jpg',
      isActive: false,
      nameItem: 'Chloe Brown',
      subtitulo: 'Hey Dude! How\'s it going? - Feb 03',
    ));

    return conversaciones;
  }
}
