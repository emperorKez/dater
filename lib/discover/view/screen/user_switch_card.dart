import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:dater/app/view/widget/bottom_nav.dart';
import 'package:dater/discover/model/user_model.dart';
import 'package:dater/discover/view/widget/swipe_buttons.dart';
import 'package:dater/discover/view/widget/user_card.dart';
import 'package:flutter/material.dart';

class UserCardScreen extends StatefulWidget {
  const UserCardScreen({
    super.key,
  });

  @override
  State<UserCardScreen> createState() => _UserCardScreenPageState();
}

class _UserCardScreenPageState extends State<UserCardScreen> {
  final AppinioSwiperController controller = AppinioSwiperController();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((_) {
      _shakeCard();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavBar(activeIndex: 2),
        body: Column(
          children: [
            // const SizedBox(
            //   height: 50,
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .75,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 50,
                  bottom: 40,
                ),
                child: AppinioSwiper(
                  invertAngleOnBottomDrag: true,
                  backgroundCardCount: 0,
                  swipeOptions: const SwipeOptions.all(),
                  controller: controller,
                  onCardPositionChanged: (
                    SwiperPosition position,
                  ) {},
                  onSwipeEnd: _swipeEnd,
                  onEnd: _onEnd,
                  cardCount: users.length,
                  cardBuilder: (BuildContext context, int index) {
                    return UserCard(
                      user: users[index],
                    );
                  },
                ),
              ),
            ),
            IconTheme.merge(
              data: const IconThemeData(size: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  swipeLeftButton(controller),
                  const SizedBox(
                    width: 20,
                  ),
                  swipeRightButton(controller),
                  const SizedBox(
                    width: 20,
                  ),
                  swipeUpButton(controller),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _swipeEnd(int previousIndex, int targetIndex, SwiperActivity activity) {
    switch (activity) {
      case Swipe():
        break;
      case Unswipe():
        break;
      case CancelSwipe():
        break;
      case DrivenActivity():
        break;
    }
  }

  void _onEnd() {}

  Future<void> _shakeCard() async {
    const double distance = 30;
    await controller.animateTo(
      const Offset(-distance, 0),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    await controller.animateTo(
      const Offset(distance, 0),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    await controller.animateTo(
      const Offset(0, 0),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
