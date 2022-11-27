import 'package:amazon_clone/home_page/home_page_controller.dart';
import 'package:amazon_clone/home_page/home_page_repository.dart';
import 'package:amazon_clone/home_page/home_page_view.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class PannierView extends StatelessWidget {
  PannierView({super.key});
  final HomePageController homePageController =
      Get.put(HomePageController(amazonRepo: AmazonRepo()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Get.to(HomePageView());
              },
              icon: Icon(Icons.arrow_back),
            ),
            title: Image.network(
              "https://cdn.discordapp.com/attachments/1020268626147823676/1044253222551961620/Noir_Paillettes_Rue_Logo.png",
              fit: BoxFit.cover,
            )),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 60)),
            Text(
              "PANIER",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Bienvenue sur le panier en esperant que votre commande vous plaise",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
            Card(
                child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tooltip(
                          message: "Sac a dos",
                          child: Text(
                            " Titre : Sac a dos",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )),
                      Tooltip(
                          message: "50£",
                          child: Text(
                            " Prix: 50£",
                          )),
                      Tooltip(
                          message: "Quantité 1",
                          child: Text(
                            " Quantité: 1",
                          )),
                    ],
                  ),
                ),
              ],
            )),
            Card(
                child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tooltip(
                          message: "Sac a dos",
                          child: Text(
                            " Titre : Sac a dos",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )),
                      Tooltip(
                          message: "50£",
                          child: Text(
                            " Prix: 50£",
                          )),
                      Tooltip(
                          message: "Quantité 1",
                          child: Text(
                            " Quantité: 1",
                          )),
                    ],
                  ),
                ),
              ],
            )),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Container(
              child: Center(
                child: Text(
                  "COMMANDER",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              color: Colors.black,
              height: 65,
              width: 250,
            )
          ],
        ));
  }
}
