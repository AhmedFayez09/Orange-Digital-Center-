import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/constant.dart';
import '../auth/title_widget.dart';
class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10.w,
      height: 33.h,
      child: Card(
        color: Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ODCs ",
                    style: TextStyle(
                        fontSize: 20,
                        color: whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12.sp)),
                    height: 7.h,
                    width: 25.w,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.share),
                          onPressed: () {},
                          color: whiteColor,
                        ),
                        Container(
                          height: 2.h,
                          color: whiteColor,
                          width: 0.4.w,
                        ),
                        IconButton(
                          icon: const Icon(Icons.copy_outlined),
                          onPressed: () {},
                          color: whiteColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              const TitleWidget(fontSize: 30),
              const Spacer(),
              Text(
                'ODC Support All University',
                style: TextStyle(
                    fontSize: 13.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
