import 'package:flutter/material.dart';
import 'package:orange_workshop/constants/constant.dart';
import 'package:orange_workshop/data/model/session_model/model.dart';
import 'package:orange_workshop/data/model/session_model/session_card.dart';
import 'package:sizer/sizer.dart';
import '../../../../widgets/category_widget/arrow_back_icon.dart';

class SectionsScreen extends StatefulWidget {
  const SectionsScreen({Key? key}) : super(key: key);

  @override
  State<SectionsScreen> createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
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
          "Sections",
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
