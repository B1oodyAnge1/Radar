import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/gallery.dart';
import 'package:flutter_application_1/pages/photo.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.lime),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/photo': (context) {
          var myPhoto = const MyPhoto(
            screenTitle: null,
            nameThisPic: null,
          );
          return myPhoto;
        },
      },
    ));



                  /*InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage(
                        "assets/img1.jpeg",
                      ),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),*/