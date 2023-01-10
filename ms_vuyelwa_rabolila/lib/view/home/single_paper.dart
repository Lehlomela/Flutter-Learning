// import 'package:flutter/material.dart';
// import 'package:ms_vuyelwa_rabolila/view/Utils/colors.dart';
// import 'package:ms_vuyelwa_rabolila/view/subject/guidelines_home.dart';
//
// import '../Text/VuyelwaText.dart';
//
// class SinglePaper extends StatelessWidget {
//   const SinglePaper(
//       {Key? key, required this.guidelineDescription, required this.paperNumber})
//       : super(key: key);
//
//   final String guidelineDescription;
//   final int paperNumber;
//
//   @override
//   Widget build(BuildContext context) {
//     double defaultPadding = 8;
//     double defaultHeight = 115;
//
//     return SizedBox(
//         height: defaultHeight,
//         child: Card(
//             elevation: 10,
//             margin: EdgeInsets.symmetric(vertical: defaultPadding),
//             child: Row(children: [
//               Image(
//                   fit: BoxFit.cover,
//                   height: defaultHeight,
//                   width: 130,
//                   image: AssetImage('images/paper$paperNumber.png')),
//               Expanded(
//                   child: ListTile(
//                 // contentPadding: const EdgeInsets.all(0),
//                 // leading:),
//                 title: Text('English Paper $paperNumber'),
//
//                 subtitle: Column(
//                   children: [
//                     VuText(text: guidelineDescription, maxLines: 2),
//                     const GuidelineLanguageType(),
//                   ],
//                 ),
//               )),
//             ])));
//   }
// }
//
// class GuidelineLanguageType extends StatelessWidget {
//   const GuidelineLanguageType({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     const String fal = 'FAL';
//     const String hl = 'HL';
//     const double padding = 8;
//
//     return Container(
//       height: 45,
//         child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//       TextButton(
//           onPressed: null,
//           child:
//               Row(children: const [AppButton(type: fal), AppButton(type: hl)]))
//     ]));
//   }
// }
//
// class AppButton extends StatelessWidget {
//   const AppButton({Key? key, required this.type}) : super(key: key);
//
//   final String type;
//
//   @override
//   Widget build(BuildContext context) {
//     double margin = 4;
//     double buttonWidth = 40;
//
//     // Colors
//
//     return Container(
//         margin: EdgeInsets.only(bottom: margin, left: margin),
//         width: buttonWidth,
//         child: TextButton(
//           onPressed: () {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => const QuestionPaper(),
//               ),
//             );
//           },
//           style: ButtonStyle(
//               backgroundColor: MaterialStateColor.resolveWith(
//                   (states) =>  VeeColors.colorFour),
//               padding: const MaterialStatePropertyAll(EdgeInsets.only(bottom: 0))),
//           child: VuText(text: type),
//         ));
//   }
// }
