// import 'package:flutter/material.dart';
// import 'package:ms_vuyelwa_rabolila/view/Utils/default_button.dart';
// import 'package:ms_vuyelwa_rabolila/view/subject/papers_the_tutor_guides_for_subject.dart';
// import 'package:provider/provider.dart';
//
// import '../../Services/tutor_service.dart';
// import 'grades_provided_by_tutor.dart';
//
// class PapersDetails extends StatelessWidget {
//   const PapersDetails({Key? key, required this.numPapers}) : super(key: key);
//
//   final int numPapers;
//
//   @override
//   Widget build(BuildContext context) {
//     List<ElevatedButton> buttons = [];
//
//     return ChangeNotifierProvider(
//         create: (context) => TutorService(),
//         child: Column(
//           children: [
//             const Grades(),
//             Papers(
//               numPapers: numPapers,
//             )
//           ],
//         ));
//   }
// }
//
//
//
//
