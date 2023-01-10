import 'package:ms_vuyelwa_rabolila/domain/subject/guideline.dart';

class Paper {
  String paperName;
  List<Guideline> guidelines = [];

  Paper(this.paperName);

  void addGuideline(Guideline guideline) {
    guidelines.add(guideline);
  }

  void addGuideline2(
      {required String name,
      required String description,
      String youtubeVideoLink = ''}) {
    guidelines.add(Guideline(name, description, youtubeVideoLink));
  }
}
