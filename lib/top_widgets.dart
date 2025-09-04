import 'package:flutter/material.dart';

class TopWidgets extends StatefulWidget {
  const TopWidgets({super.key});

  @override
  State<TopWidgets> createState() => _TopWidgetsState();
}

class _TopWidgetsState extends State<TopWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Widgets'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //flex is use in expanded widget flex:1 is by default
         Stack(
           alignment: Alignment.center,
           children: [
             Container(
               height: 300,
               width: 140,
               color: Colors.red,
             ),
             Positioned(child: Text('khan'),
               top: 10,
             ),
             Container(
               height: 130,
               width: 120,
               color: Colors.green,
             ),
             Container(
               height: 100,
               width: 100,
               color: Colors.yellow,
             ),
             Text('mohammad Khan'),
           ],
         ),
          // SizedBox(height: 10),
          // // Row(
          // //   children: [
          // //     Center(
          // //         child: Container(
          // //           height: 259,
          // //           width: 200,
          // //           // transform: Matrix4.rotationZ(.2),
          // //           decoration: BoxDecoration(
          // //             borderRadius: BorderRadius.circular(15),
          // //             gradient: LinearGradient(colors: [Colors.blueAccent, Colors.pinkAccent],
          // //                 begin: Alignment.topLeft,
          // //                 end: Alignment.bottomRight
          // //             ),
          // //             color: Colors.black,
          // //             image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg'),
          // //                 fit: BoxFit.cover
          // //             ),
          // //           ),
          // //           child: Center(child: RichText(text: TextSpan(
          // //               children: [
          // //                 TextSpan(
          // //                   text: 'creating',style: TextStyle(
          // //                     color: Colors.pinkAccent
          // //                 ),
          // //                 ),
          // //                 TextSpan(
          // //                   text: 'Container in',style: TextStyle(
          // //                   color: Colors.teal,
          // //                 ),
          // //                 ),
          // //                 TextSpan(
          // //                   text: 'flutter',style: TextStyle(
          // //                     color: Colors.cyan
          // //                 ),
          // //                 ),
          // //               ]
          // //           ))
          // //           ),
          // //         )
          // //     ),
          // //     Center(
          // //       child: Container(
          // //         height: 259,
          // //         width: 200,
          // //         // transform: Matrix4.rotationZ(.2),
          // //         decoration: BoxDecoration(
          // //           borderRadius: BorderRadius.circular(15),
          // //           gradient: LinearGradient(colors: [Colors.blueAccent, Colors.pinkAccent],
          // //               begin: Alignment.topLeft,
          // //               end: Alignment.bottomRight
          // //           ),
          // //           color: Colors.black,
          // //           image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg'),
          // //               fit: BoxFit.cover
          // //           ),
          // //         ),
          // //         child: Center(child: RichText(text: TextSpan(
          // //             children: [
          // //               TextSpan(
          // //                 text: 'creating',style: TextStyle(
          // //                   color: Colors.pinkAccent
          // //               ),
          // //               ),
          // //               TextSpan(
          // //                 text: 'Container in',style: TextStyle(
          // //                 color: Colors.teal,
          // //               ),
          // //               ),
          // //               TextSpan(
          // //                 text: 'flutter',style: TextStyle(
          // //                   color: Colors.cyan
          // //               ),
          // //               ),
          // //             ]
          // //         ))
          // //         ),
          // //       )
          // //   )
          // //   ],
          // // ),
          // Expanded(
          //   flex: 3,
          //   child: Center(
          //     child: Container(
          //       height: 259,
          //       width: 200,
          //       // transform: Matrix4.rotationZ(.2),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(15),
          //         gradient: LinearGradient(colors: [Colors.blueAccent, Colors.pinkAccent],
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight
          //         ),
          //         color: Colors.black,
          //         image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg'),
          //             fit: BoxFit.cover
          //         ),
          //       ),
          //       child: Center(child: RichText(text: TextSpan(
          //         children: [
          //           TextSpan(
          //             text: 'creating',style: TextStyle(
          //             color: Colors.pinkAccent
          //           ),
          //           ),
          //           TextSpan(
          //             text: 'Container in',style: TextStyle(
          //               color: Colors.teal,
          //           ),
          //           ),
          //           TextSpan(
          //             text: 'flutter',style: TextStyle(
          //               color: Colors.cyan
          //           ),
          //           ),
          //         ]
          //       ))
          //     ),
          //   )
          //   ),
          // ),
          // Expanded(
          //   flex: 3,
          //   child: Container(
          //     height: 250,
          //     width: 250,
          //     decoration: BoxDecoration(
          //       color: Colors.cyan,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
