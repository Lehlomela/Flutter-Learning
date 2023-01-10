import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/Services/firestoredb/tutor_db.dart';
import 'package:ms_vuyelwa_rabolila/state_management/state_management.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/default_button.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/default_forminput.dart';

class AddSubject extends StatefulWidget {
  const AddSubject({Key? key}) : super(key: key);

  @override
  State<AddSubject> createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: const AddSubjectForm(),
    );
  }
}

class AddSubjectForm extends StatefulWidget {
  const AddSubjectForm({Key? key}) : super(key: key);

  @override
  State<AddSubjectForm> createState() => _AddSubjectFormState();
}

class _AddSubjectFormState extends State<AddSubjectForm> {
  final _formKey = GlobalKey<FormState>();
  final subjectController = TextEditingController();
  final gradeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(children: [
          MyFormInput(
            icon: Icons.add,
            labelText: 'Subject Name',
            validator: (String? subject) => _validateSubject(subject),
            controller: subjectController,
          ),
          MyFormInput(
            icon: Icons.grading,
            maxLength: 2,
            labelText: 'Grade',
            validator: (String? grade) => _validateGrate(grade),
            controller: gradeController,
          ),
          MyDefaultButton(
            text: 'Add',
            onPressed: () {
              if (_formKey.currentState!.validate()) {

                TutorDb().addSubject(
                    subjectController.text, int.parse(gradeController.text));

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
          )
        ]));
  }
}

String? _validateGrate(String? grade) {
  if (grade == null) return 'Please enter grade';

  int? subjectGrade = int.tryParse(grade);

  if (subjectGrade == null) {
    return 'Invalid grade';
  }

  if (subjectGrade < 1 || subjectGrade > 12) {
    return 'grade must be between grade 1 - 12';
  }

  return null;
}

String? _validateSubject(String? subject) {
  if (subject == null) {
    return 'Please enter subject';
  }

  if (subject.length < 4) {
    return 'Please enter full name of subject';
  }

  return null;
}
