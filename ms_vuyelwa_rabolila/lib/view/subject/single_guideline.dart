import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/View/Text/VuyelwaHeadings.dart';

import '../../domain/subject/guideline.dart';

class SingleGuideline extends StatelessWidget {
  const SingleGuideline({Key? key, required this.guideline}) : super(key: key);

  final Guideline guideline;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Heading(heading: guideline.name),

      ],
    );
  }
}

class YoutubeVideo extends StatelessWidget {
  const YoutubeVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
