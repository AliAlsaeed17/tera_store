import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tera_store/presentation/resources/assets_manager.dart';
import 'package:tera_store/presentation/resources/colors_manager.dart';
import 'package:tera_store/presentation/resources/strings_manager.dart';
import 'package:tera_store/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();

  final PageController _pageController = PageController();

  int _currentPageIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        height: AppSize.s100,
        color: ColorManager.white,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.skip,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  const OnBoardingPage(this._sliderObject);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: AppSize.s60),
        SvgPicture.asset(_sliderObject.image),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}
