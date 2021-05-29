import 'package:flutter/material.dart';

import 'package:admu_student_app/widgets/groups/input_group.dart';

class YearAddQPI extends StatelessWidget {
  final TextEditingController yearController;
  final TextEditingController qpiController;
  final TextEditingController unitsController;

  YearAddQPI({
    @required this.yearController,
    @required this.qpiController,
    @required this.unitsController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              // Text Field at the Left
              Expanded(
                child: InputGroup(
                  'Year Level',
                  yearController,
                  hint: '1',
                  length: 1,
                ),
              ),
              SizedBox(width: 20),
              // Text at the Right
              Expanded(
                child: InputGroup(
                  'Yearly QPI',
                  qpiController,
                  hint: '4.0',
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: InputGroup(
                  'Units',
                  unitsController,
                  hint: '3',
                ),
              ),
              SizedBox(width: 20),
              Expanded(child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
