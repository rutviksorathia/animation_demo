import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  ScrollController scrollController = ScrollController();

  HomeViewModel() {
    scrollController.addListener(handleBusinessAskProfilesScrollView);
  }

  bool isScrollEventDispatched = false;
  double size = 100;

  Future<void> handleBusinessAskProfilesScrollView() async {
    if (scrollController.position.extentAfter == 00) {
      isScrollEventDispatched = true;
    } else {
      size = 200;
      isScrollEventDispatched = false;

      const Duration(seconds: 5);
    }
    notifyListeners();
  }
}
