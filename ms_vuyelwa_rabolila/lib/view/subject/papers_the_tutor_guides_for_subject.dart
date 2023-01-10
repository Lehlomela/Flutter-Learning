// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../Services/tutor_service.dart';
// import '../Utils/default_button.dart';
//
// class Papers extends StatelessWidget {
//   const Papers({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     TutorService tutorService = Provider.of<TutorService>(context);
//
//     return SizedBox(
//         height: 100,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: [
//             for (int i = 1; i <= numPapers; i++)
//               MyDefaultButton(text: 'Paper $i')
//           ],
//         ));
//   }
// }
