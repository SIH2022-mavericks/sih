// import 'package:flutter/material.dart';
// import 'camera.dart';

// class photo extends StatefulWidget {
//   const photo({Key? key}) : super(key: key);

//   @override
//   _photoState createState() => _photoState();
// }

// class _photoState extends State<photo> {
//   bool isSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.white,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 550,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18.0),
//                   child: Container(
//                     height: 80,
//                     width: MediaQuery.of(context).size.width / 2.4,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         new BoxShadow(
//                           color: Color(0xffcdc1ff),
//                           blurRadius: 2.0,
//                         ),
//                       ],
//                       color: Color(0xFF21295c),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             TakePictureScreenState();
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 1.0),
//                             child: Text("Take a Photo",
//                                 style: TextStyle(
//                                     color: Color(0xffcdc1ff),
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                         ),
//                         Icon(
//                           Icons.camera_enhance,
//                           size: 32,
//                           color: Color(0xffcdc1ff),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 18.0),
//                   child: Container(
//                     height: 80,
//                     width: MediaQuery.of(context).size.width / 2.4,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         new BoxShadow(
//                           color: Color(0xffcdc1ff),
//                           blurRadius: 2.0,
//                         ),
//                       ],
//                       color: Color(0xFF21295c),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 1.0),
//                           child: Text("Upload a Photo",
//                               style: TextStyle(
//                                   color: Color(0xffcdc1ff),
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold)),
//                         ),
//                         Icon(
//                           Icons.file_upload,
//                           size: 32,
//                           color: Color(0xffcdc1ff),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
