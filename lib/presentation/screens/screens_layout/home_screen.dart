import 'package:flutter/material.dart';
import 'package:orange_workshop/data/model/category_model.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/events/events_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/finals/finals_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/lectures/lectures_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/midterms/midterms_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/notes/nots_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/sections/sections_screen.dart';

import 'package:orange_workshop/presentation/widgets/auth/title_widget.dart';
import 'package:orange_workshop/presentation/widgets/home/grid_card.dart';

class HomeScreen extends StatelessWidget {

   HomeScreen({super.key});
List<CategoryModel> homeCardModelDummyDataList =[
  CategoryModel(imageName: "assets/1.jpg", titleName: "Events", screen: EventsScreen()),
  CategoryModel(imageName: "assets/2.jpg", titleName: "Midterms", screen: const MidtermsScreen()),
  CategoryModel(imageName: "assets/3.jpg", titleName: "Lectures", screen: const LecturesScreen()),
  CategoryModel(imageName: "assets/4.jpg", titleName: "Finals", screen: const FinalsScreen()),
  CategoryModel(imageName: "assets/5.jpg", titleName: "Notes", screen: NotsScreen()),
  CategoryModel(imageName: "assets/6.jpg", titleName: "Sections", screen: SectionsScreen()),




];



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: const TitleWidget(fontSize: 30),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemCount: homeCardModelDummyDataList.length,
            itemBuilder: (c, i) {
              return GridCard(
               categoryModel: homeCardModelDummyDataList[i],
              );
            },
          ),
        ),
      ],
    );
  }
}
