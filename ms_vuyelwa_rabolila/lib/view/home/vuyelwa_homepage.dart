import 'package:flutter/material.dart';

import '../Text/VuyelwaHeadings.dart';
import '../Text/VuyelwaText.dart';
import 'Guidelines.dart';

class VuyelwaHomePage extends StatelessWidget {
  const VuyelwaHomePage({Key? key}) : super(key: key);

  Widget subject(String subjectImage) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(8),
      child: Column(children: [
        Container(
            margin: const EdgeInsets.all(0),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                // borderRadius: const BorderRadius.all(Radius.circular(120)),
                image: DecorationImage(
              image: AssetImage(
                  'images/subjects/${subjectImage.toLowerCase()}.png'),
              fit: BoxFit.cover,
            ))),
        Text(
            '${subjectImage.substring(0, 1).toUpperCase()}${subjectImage.substring(1).toLowerCase()}'),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Heading(heading: 'Subjects'),
      SizedBox(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [subject('english'), subject('math')],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: const [
            Heading(heading: 'About Me', verticalMargin: 40),
            MyText(
                text:
                    'There are many variations of passages of Lorem Ipsum available,'
                    ' but the majority have suffered alteration in some form, by injected humour,'
                    ' or randomised words which don\'t look even slightly believable.'
                    ' If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t'
                    'anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators'
                    'on the Internet tend to repeat predefined chunks as necessary, making this the first'
                    'free from repetition, injected humour, or non-characteristic words etc'),
            Heading(
              heading: 'Guidelines',
              verticalMargin: 40,
            ),
            // Guidelines()
          ],
        ),
      )
    ]);
  }
}
