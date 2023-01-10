import 'package:ms_vuyelwa_rabolila/domain/subject/paper.dart';

import 'tutor.dart';

class Subject {
  String name;
  int grade = 12;
  late Tutor tutor;

  final Map<String, Paper?> subjectPapers = {};

  Subject(this.name, this.tutor);

  Paper? addPaper(String paperNumber, Paper? paper) {
    return subjectPapers.putIfAbsent(paperNumber, () => paper);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Subject &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          grade == other.grade;

  @override
  int get hashCode => name.hashCode ^ grade.hashCode;
}
