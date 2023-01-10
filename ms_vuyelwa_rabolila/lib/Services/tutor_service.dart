import 'package:flutter/cupertino.dart';

import '../domain/subject/paper.dart';
import '../domain/subject/subject.dart';
import '../domain/subject/tutor.dart';

class TutorService  extends ChangeNotifier {

  // var selectedTutor = ?;

  // todo:: get tutor using unique key
  Tutor getTutor() {
    var tutor =
        Tutor('Vuyelwa', 'Rabolila', 'I\'m all that', 'password', 'email');


    var subject = Subject('english', tutor);
    subject.addPaper('paper 1', null);

    var paper = Paper('English Paper 1');
    paper.addGuideline2(
        name: 'Comprehension',
        description: ' Lorem Ipsum has been the industry\''
            's standard dummy text ever since the 1500s, when an '
            'unknown printer took a galley of type and scrambled it '
            'to make a type specimen book. It has survived not only five centuries, '
            'but also the leap into electronic typesetting, remaining essentially '
            'unchanged.');
    subject.subjectPapers['paper 1'] = paper;
    tutor.addSubject(subject);

    return tutor;
  }
}
