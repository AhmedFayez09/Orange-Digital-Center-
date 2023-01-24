// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:orange_workshop/data/model/category_model.dart';
import 'package:sizer/sizer.dart';

class GridCard extends StatelessWidget {
  CategoryModel categoryModel;

  GridCard({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, categoryModel.screenName);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => categoryModel.screen),
        );
      },
      child: SizedBox(
        height: 22.h,
        width: 190,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 25,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.sp),
                    child: Image.asset(
                      categoryModel.imageName,
                    ),
                  ),
                ),
              ),
              Text(
                categoryModel.titleName,
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
