import 'dart:async';

import 'package:tera_store/domain/model.dart';
import 'package:tera_store/presentation/base/base_viewmodel.dart';

import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // stream controllers outputs
  final StreamController _streamController =
      StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
  int _currentPageIndex = 0;
  // OnBoarding view model inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    // view model start your job
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = _currentPageIndex + 1;
    if (nextIndex == _list.length) nextIndex = 0;
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = _currentPageIndex - 1;
    if (previousIndex == -1) previousIndex = _list.length - 1;
    return previousIndex;
  }

  @override
  void onPaeChanged(int index) {
    _currentPageIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  // OnBoarding private functions
  List<SliderObject> _getSliderData() => [
        SliderObject(
          title: AppStrings.onBoardingTitle1,
          subTitle: AppStrings.onBoardingSubTitle1,
          image: ImageAssets.onBoardingLogo1,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle2,
          subTitle: AppStrings.onBoardingSubTitle2,
          image: ImageAssets.onBoardingLogo2,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle3,
          subTitle: AppStrings.onBoardingSubTitle3,
          image: ImageAssets.onBoardingLogo3,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle4,
          subTitle: AppStrings.onBoardingSubTitle4,
          image: ImageAssets.onBoardingLogo4,
        ),
      ];

  void _postDataToView() {
    inputSliderViewObject.add(SliderViewObject(
      sliderObject: _list[_currentPageIndex],
      numOfSlides: _list.length,
      currentIndex: _currentPageIndex,
    ));
  }
}

// inputs mean 'orders' that view model receive it from view
abstract class OnBoardingViewModelInputs {
  int goNext(); // when user clicks on right arrow or swipe left
  int goPrevious(); // when user clicks on left arrow or swipe right
  void onPaeChanged(int index);

  Sink
      get inputSliderViewObject; // This is the way to add data to the stream (stream input)
}

abstract class OnBoardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}
