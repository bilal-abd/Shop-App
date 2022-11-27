import 'package:amazon_clone/home_page/bottom.dart';
import 'package:amazon_clone/home_page/home_page_controller.dart';
import 'package:amazon_clone/home_page/home_page_repository.dart';
import 'package:amazon_clone/pannier/pannier_view.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});
  final HomePageController homePageController =
      Get.put(HomePageController(amazonRepo: AmazonRepo()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Image.network(
              "https://cdn.discordapp.com/attachments/1020268626147823676/1044253222551961620/Noir_Paillettes_Rue_Logo.png",
              fit: BoxFit.cover,
            )),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: homePageController.changeTabIndex,
          currentIndex: homePageController.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            _bottomNavigationBarItem(
              icon: Icons.home,
              label: 'Home',
            ),
            _bottomNavigationBarItem(
              icon: Icons.shopping_basket,
              label: 'Panier',
            ),
          ],
        ),
        body: homePageController.obx(
          (state) => ListView.builder(
            shrinkWrap: true,
            itemCount: homePageController.clothes.length,
            itemBuilder: (context, index) {
              return Card(
                  child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.network(
                      homePageController.clothes[index].image ?? "",
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tooltip(
                            message:
                                homePageController.clothes[index].title ?? "",
                            child: Text(
                              " Titre : ${homePageController.clothes[index].title ?? ""}",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            )),
                        Tooltip(
                            message:
                                homePageController.clothes[index].category ??
                                    "",
                            child: Text(
                              " Prix: ${homePageController.clothes[index].price ?? ""}£",
                            )),
                      ],
                    ),
                  ),
                ],
              ));
            },
          ),
        ));
  }

  _bottomNavigationBarItem({IconData? icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
