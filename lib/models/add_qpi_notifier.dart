import 'package:flutter/material.dart';

import 'package:admu_student_app/models/course.dart';
import 'package:admu_student_app/models/semester.dart';
import 'package:admu_student_app/models/year.dart';

class AddQPINotifier extends ChangeNotifier {
  int _semNum = -1;
  int _gradeVal = 1;

  get semNum => _semNum;
  get gradeVal => _gradeVal;

  set semNum(int semNum) {
    _semNum = semNum;
    notifyListeners();
  }

  set gradeVal(int gradeVal) {
    _gradeVal = gradeVal;
    notifyListeners();
  }

  AddQPINotifier();

  AddQPINotifier.fromYearSem(this._semNum);

  AddQPINotifier.fromCourse(int sem, Course course) {
    semNum = sem;

    if (course.qpi == 0.0)
      gradeVal = 7;
    else if (course.qpi == 1.0)
      gradeVal = 6;
    else if (course.qpi == 2.0)
      gradeVal = 5;
    else if (course.qpi == 2.5)
      gradeVal = 4;
    else if (course.qpi == 3.0)
      gradeVal = 3;
    else if (course.qpi == 3.5)
      gradeVal = 2;
    else
      gradeVal = 1;
  }
}
