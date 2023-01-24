import 'package:flutter/material.dart';
import 'package:orange_workshop/constants/constant.dart';
import 'package:sizer/sizer.dart';

import 'add_nots.dart';

class NotsScreen extends StatelessWidget {
  static const String routName = 'notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: const Center(child: Text("There's No Data To Show")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(

        children: [
          SizedBox(height: 20.h,),
          SizedBox(
            height: 15.h,
            width: 100.w,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:const [
                        Text('02:43 PM',style: TextStyle(fontSize: 30),),
                        Text('17/09/2022',style: TextStyle(fontSize: 25),),
                        Text('My note',style: TextStyle(fontSize: 20),),

                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(icon:const Icon(Icons.edit),onPressed: (){},),
                        IconButton(icon:const Icon(Icons.delete),onPressed: (){},),


                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
           Navigator.pushNamed(context, AddNots.routeName);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
