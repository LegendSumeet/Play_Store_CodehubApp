import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  late PageController pageController;
  RxInt currentPage = 0.obs;

  // Set current page and navigate
  void gotoTab(int page, {required Function(int) navigateCallback}) {
    currentPage.value = page;
    pageController.jumpToPage(page);
    navigateCallback(page); // Notify the navigation
  }

  void animatetoTab(int page, {required Function(int) navigateCallback}) {
    currentPage.value = page;
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    navigateCallback(page); // Notify the navigation
  }

    void onPageChanged(int index) {
    currentPage.value = index;
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
