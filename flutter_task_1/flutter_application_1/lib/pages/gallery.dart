import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/photo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

fun(index, vetsion) {
  final fixedLength = <String>[
    'assets/img1.jpeg',
    'assets/img2.jpg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img2.jpg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img2.jpg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img2.jpg',
    'assets/img1.jpeg',
    'assets/img1.jpeg',
    'assets/img1.jpeg'
  ];
  int found = 0;
  String s = fixedLength[index];
  found = s.indexOf('/');
  s = s.substring(found + 1);
  found = s.indexOf('.');
  s = s.substring(0, found);
  if (vetsion == 0) {
    return fixedLength[index];
  }
  if (vetsion == 1) {
    return s;
  } else {
    String e = 'error';
    return e;
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final fixedLength = <String>[
    //   'assets/img1.jpeg',
    //   'assets/img2.jpg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img2.jpg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img2.jpg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img2.jpg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg',
    //   'assets/img1.jpeg'
    // ];

    // int found = 0;
    // String s = fixedLength[0];
    // found = s.indexOf('/');
    // s = s.substring(found + 1);
    // found = s.indexOf('.');
    // s = s.substring(0, found);
    return Scaffold(
        appBar: AppBar(title: Text('Gallery')),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: ((context, index) {
            return Container(
                padding: EdgeInsets.all(3.0),
                child: InkWell(
                  onTap: () {
                    //Navigator.pushNamed(context, '/photo');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyPhoto(
                              screenTitle: fun(index, 0),
                              nameThisPic: fun(index, 1))),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          fun(index, 0),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(
                      fun(index, 1),
                      // namePic[index],
                      style: TextStyle(
                          backgroundColor: Colors.grey[300],
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ));

            // return Ink.image(
            //   image: AssetImage(
            //     fixedLength[0],
            //   ),
            //   height: MediaQuery.of(context).size.height * 0.2,
            //   width: MediaQuery.of(context).size.width * 0.2,
            //   fit: BoxFit.cover,
            // );
          }),
          // body: Column(
          //   children: [
          //     Row(
          //       children: [
          //         InkWell(
          //           onTap: () {
          //             //Navigator.pushNamed(context, '/photo');
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => MyPhoto(screenTitle: PicInd(1))),
          //             );
          //           },
          //           child: Ink.image(
          //             image: AssetImage(
          //               PicInd(1),
          //             ),
          //             height: MediaQuery.of(context).size.height * 0.2,
          //             width: MediaQuery.of(context).size.width * 0.2,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         InkWell(
          //           onTap: () {
          //             //Navigator.pushNamed(context, '/photo');
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => MyPhoto(screenTitle: PicInd(1))),
          //             );
          //           },
          //           child: Ink.image(
          //             image: AssetImage(
          //               PicInd(1),
          //             ),
          //             height: MediaQuery.of(context).size.height * 0.2,
          //             width: MediaQuery.of(context).size.width * 0.2,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         InkWell(
          //           onTap: () {
          //             //Navigator.pushNamed(context, '/photo');
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => MyPhoto(screenTitle: PicInd(1))),
          //             );
          //           },
          //           child: Ink.image(
          //             image: AssetImage(
          //               PicInd(1),
          //             ),
          //             height: MediaQuery.of(context).size.height * 0.2,
          //             width: MediaQuery.of(context).size.width * 0.2,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         InkWell(
          //           onTap: () {
          //             //Navigator.pushNamed(context, '/photo');
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => MyPhoto(screenTitle: PicInd(1))),
          //             );
          //           },
          //           child: Ink.image(
          //             image: AssetImage(
          //               PicInd(1),
          //             ),
          //             height: MediaQuery.of(context).size.height * 0.2,
          //             width: MediaQuery.of(context).size.width * 0.2,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         InkWell(
          //           onTap: () {
          //             //Navigator.pushNamed(context, '/photo');
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => MyPhoto(screenTitle: PicInd(1))),
          //             );
          //           },
          //           child: Ink.image(
          //             image: AssetImage(
          //               PicInd(1),
          //             ),
          //             height: MediaQuery.of(context).size.height * 0.2,
          //             width: MediaQuery.of(context).size.width * 0.2,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         InkWell(
          //           onTap: () {
          //             //Navigator.pushNamed(context, '/photo');
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => MyPhoto(screenTitle: PicInd(2))),
          //             );
          //           },
          //           child: Ink.image(
          //             image: AssetImage(
          //               PicInd(2),
          //             ),
          //             height: MediaQuery.of(context).size.height * 0.2,
          //             width: MediaQuery.of(context).size.width * 0.2,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
        ));
  }
}
