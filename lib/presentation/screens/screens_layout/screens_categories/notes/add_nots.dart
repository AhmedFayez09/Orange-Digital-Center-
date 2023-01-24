import 'package:flutter/material.dart';
import 'package:orange_workshop/constants/constant.dart';
import 'package:orange_workshop/presentation/widgets/auth/text_fo_fe_widget.dart';
import 'package:sizer/sizer.dart';

class AddNots extends StatelessWidget {
  static const String routeName = 'add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        backgroundColor: noColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Add Note",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormFeildWidget(
              validator: (val){
                if(val!.isEmpty){
                  return 'Please Fill Failed';
                }
              },
              text: 'Title',
              controller: AppController.notTitle,
              obscureText: false,
              suffixIcon: Container(
                width: 0,
              ),
            ),
            TextFormFeildWidget(
              validator: (val){
                if(val!.isEmpty){
                  return 'Please Fill Failed';
                }
              },
              maxLines: 6,
              text: 'Description',
              controller: AppController.notTitle,
              obscureText: false,
              suffixIcon: Container(
                width: 0,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor)),
              onPressed: () {},
              child: const Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}
