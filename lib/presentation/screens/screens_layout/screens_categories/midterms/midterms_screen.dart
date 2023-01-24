import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constant.dart';

import '../../../../../data/model/session_model/model.dart';
import '../../../../../data/model/session_model/session_card.dart';
import '../../../../widgets/category_widget/arrow_back_icon.dart';

class MidtermsScreen extends StatefulWidget {
  const MidtermsScreen({Key? key}) : super(key: key);

  @override
  State<MidtermsScreen> createState() => _MidtermsScreenState();
}

class _MidtermsScreenState extends State<MidtermsScreen> {
  String dropdownvalue = 'All Sections';

  List<String> items = [
    'All Sections',
    'Finished Sections',
    'Remaining Sections'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: noColor,
        elevation: 0,
        leading: const ArrowBackICon(),
        title: Text(
          "Midterms",
          style: TextStyle(
              fontSize: 23, color: blackColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          DropdownButton(
            underline: Container(),
            icon: Icon(
              Icons.app_registration,
              color: primaryColor,
              size: 23,
            ),
            items: items.map((String items) {
              return DropdownMenuItem(
                  value: items,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        items,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ));
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
          SizedBox(
            width: 3.w,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: ListView.builder(
          itemCount: SessionModel.subjects.length,
          itemBuilder: (c, i) {
            return SessionCard(
              nameSubject: SessionModel.subjects[i].subjectName,
            );
          },
        ),
      ),
    );
  }
}
