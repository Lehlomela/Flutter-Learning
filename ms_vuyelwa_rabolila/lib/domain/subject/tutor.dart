import 'dart:core';

import 'package:ms_vuyelwa_rabolila/domain/customer.dart';

import 'subject.dart';

class Tutor extends Customer {
  // grade, subject
  final Set<Subject> _subjects = {};

  Tutor(super.firstName, super.lastName, super.about, super.password,
      super.email);

  void addSubject(Subject subject) {
    _subjects.add(subject);
  }

  List<int> getGrades() {
    return _subjects.map((e) => e.grade).toList(growable: false);
  }
}
