import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SessionCard extends StatelessWidget {
final String nameSubject;
const SessionCard({super.key, required this.nameSubject});
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 15.h,
      width: 15.w,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Padding(
          padding: EdgeInsets.all(13.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(nameSubject,
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: const [
                      Icon(Icons.alarm_rounded),
                      Text('2022-06-01'),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const OneColumn(
                    title: 'Lecture Day',
                    date: '2022-06-01',
                    icon: Icons.calendar_today_outlined,
                  ),
                  const Spacer(),
                  OneColumn(
                    title: 'Start Time',
                    date: '08:00:00',
                    icon: Icons.access_time_rounded,
                    colorIcon: Colors.green[300],
                  ),
                  const Spacer(),
                  OneColumn(
                    title: 'End Time',
                    date: '10:00:00',
                    icon: Icons.access_time_rounded,
                    colorIcon: Colors.red[300],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OneColumn extends StatelessWidget {
  final String date;
  final String title;
  final Color? colorIcon;
  final IconData icon;

  const OneColumn({super.key, required this.date, required this.title, required this.icon, this.colorIcon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.5.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:const TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
          ),
          Row(
            children:  [
              Icon(icon,color: colorIcon,),
              Text(date),
            ],
          )
        ],
      ),
    );
  }
}
