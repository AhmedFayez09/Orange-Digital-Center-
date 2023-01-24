import 'package:flutter/material.dart';
import 'package:orange_workshop/presentation/widgets/auth/details_gender_unevisity.dart/drop_down_button_widget.dart';

class DetailsOfGenderAndUniversity extends StatelessWidget {
  const DetailsOfGenderAndUniversity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DropdownButtonWidget(
          title: 'Gender',
          dropdownvalue: 'Mail',
          items: const [
            'Mail',
            'Female',
            'Auther',
          ],
        ),
        DropdownButtonWidget(
          title: 'University',
          dropdownvalue: 'AUC',
          items: const [
            'AUC',
            'MUI',
            'HTI',
          ],
        ),
      ],
    );
  }
}
