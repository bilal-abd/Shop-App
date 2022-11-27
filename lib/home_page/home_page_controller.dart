import 'package:amazon_clone/home_page/home_page_repository.dart';
import 'package:amazon_clone/home_page/model/home_page_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController with StateMixin {
  AmazonRepo amazonRepo = AmazonRepo();
  HomePageController({required this.amazonRepo});
  var tabIndex = 0;
  List<Product> clothes = [];
  @override
  Future<void> onInit() async {
    change(null, status: RxStatus.loading());
    clothes = await amazonRepo.getProduct();
    change(null, status: RxStatus.success());

    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
