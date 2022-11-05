import 'dart:async';

import 'package:tera_store/presentation/base/base_view_model.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // stream controllers outputs
  StreamController _streamController = StreamController();
  // OnBoarding view model inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPaeChanged(int index) {
    // TODO: implement onPaeChanged
  }
}

// inputs mean 'orders' that view model receive it from view
abstract class OnBoardingViewModelInputs {
  void goNext(); // when user clicks on right arrow or swipe left
  void goPrevious(); // when user clicks on left arrow or swipe right
  void onPaeChanged(int index);
}

abstract class OnBoardingViewModelOutputs {}
