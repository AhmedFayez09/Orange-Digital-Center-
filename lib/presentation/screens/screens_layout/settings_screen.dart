import 'package:flutter/material.dart';
import 'package:orange_workshop/data/model/list_tile_item.dart';
import 'package:orange_workshop/data/model/setting_model.dart';
import 'package:orange_workshop/presentation/widgets/title_layout_screen.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleLayoutScreen(title: 'Settings'),
        Expanded(
          child: ListView.builder(
            itemCount: SettingModel.detailSettings.length ,
            itemBuilder: (c, i) => ListTileItem(
              screenName: SettingModel.detailSettings[i].screenName,
              title: SettingModel.detailSettings[i].title,
            ),
          ),
        ),

      ],
    );
  }
}
