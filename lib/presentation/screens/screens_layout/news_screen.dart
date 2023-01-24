import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orange_workshop/presentation/widgets/news/news_card.dart';
import '../../widgets/title_layout_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          TitleLayoutScreen(title: 'News'),
          NewsCard(),
        ],
      ),
    );
  }
}
