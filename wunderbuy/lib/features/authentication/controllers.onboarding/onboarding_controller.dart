import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();
  //vars
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update page indicator
  void updatePageIndicator(index)=> currentPageIndex.value = index;

  //jump to specific page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }
  //update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      //get.to(logingscreen());
    }else{
      int pageIndex = currentPageIndex.value + 1;
      pageController.jumpToPage(pageIndex);
    }
  }
  //update current index and jump to the last page
  void lastPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}