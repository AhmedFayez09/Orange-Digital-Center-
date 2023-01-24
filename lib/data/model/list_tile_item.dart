import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListTileItem extends StatelessWidget {
final String title;
final String screenName;

  const ListTileItem({super.key, required this.title,required this.screenName});
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      width: double.infinity * .7,
      height: 9.h,
      child: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, screenName);
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            iconColor: Colors.black,
            leading:  Text(title,
                style:
                TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            trailing: const Icon(Icons.arrow_back_ios),
          ),
          Container(
            width: 86.w,
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
