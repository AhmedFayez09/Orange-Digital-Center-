import '../../presentation/screens/screens_layout/screens_setting/faq_screen.dart';
import '../../presentation/screens/screens_layout/screens_setting/our_partners_screen.dart';
import '../../presentation/screens/screens_layout/screens_setting/support_screen.dart';
import '../../presentation/screens/screens_layout/screens_setting/term_screen.dart';

class SettingModel {
  String title;
  String screenName;

  SettingModel({required this.title, required this.screenName});

  static List<SettingModel> detailSettings = [
    SettingModel(title: 'FAQ', screenName: FAQsScreen.routName),
    SettingModel(
        title: 'Terms & Conditions', screenName: TermssScreen.routName),
    SettingModel(title: 'Our Partners', screenName: OurPartnersScreen.routName),
    SettingModel(title: 'Support', screenName: SupportScreen.routName),
  ];
}
