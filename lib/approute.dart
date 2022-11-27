import 'package:amazon_clone/pannier/pannier_view.dart';
import 'package:get/get.dart';

import 'home_page/bottom.dart';
import 'home_page/home_page_view.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(
      name: navbar,
      page: () => NavBar(),
    ),
    GetPage(name: home, page: (() => HomePageView())),
    GetPage(name: pannier, page: (() => PannierView()))
  ];
  static getNavBar() => navbar;
  static gethome() => home;
  static getpannier() => pannier;

  static String navbar = "/";
  static String home = "/home";
  static String pannier = "/pannier";
}
