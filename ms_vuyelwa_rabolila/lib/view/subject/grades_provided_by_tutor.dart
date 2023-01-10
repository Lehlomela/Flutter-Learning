// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../Services/tutor_service.dart';
// import '../Utils/default_button.dart';
//
// class Grades extends StatelessWidget {
//   const Grades({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     TutorService tutorService = Provider.of<TutorService>(context);
//
//     jsonDecode()
//
//     return SizedBox(
//         height: 100,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: [
//             for (var value in tutorService.getTutor().getGrades())
//               MyDefaultButton(text: 'Grade $value')
//           ],
//         ));
//   }
// }
