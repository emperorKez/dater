import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:appinio_swiper/appinio_swiper.dart';

//swipe card to the right side
Widget swipeRightButton(AppinioSwiperController controller) {
  return ListenableBuilder(
    listenable: controller,
    builder: (context, child) {
      final SwiperPosition? position = controller.position;
      final SwiperActivity? activity = controller.swipeActivity;
      final double progress = (activity is Swipe || activity == null) &&
              position != null &&
              position.offset.toAxisDirection().isHorizontal
          ? position.progressRelativeToThreshold.clamp(-1, 1)
          : 0;

      final Color color = Color.lerp(
        CupertinoColors.systemGrey2,
        Colors.green,
        (-1 * progress).clamp(0, 1),
      )!;
      return GestureDetector(
        onTap: () => controller.swipeRight(),
        child: Transform.scale(
          scale: 1 + .1 * progress.clamp(0, 1),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.9),
                  spreadRadius: -10,
                  blurRadius: 20,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.favorite,
              color: Theme.of(context).primaryColor,
              size: 40,
            ),
          ),
        ),
      );
    },
  );
}

Widget swipeUpButton(AppinioSwiperController controller) {
  return ListenableBuilder(
    listenable: controller,
    builder: (context, child) {
      final SwiperPosition? position = controller.position;
      final SwiperActivity? activity = controller.swipeActivity;
      final double progress = (activity is Swipe || activity == null) &&
              position != null &&
              position.offset.toAxisDirection().isHorizontal
          ? position.progressRelativeToThreshold.clamp(-1, 1)
          : 0;

      final Color color = Color.lerp(
        const Color.fromARGB(255, 197, 197, 202),
        Colors.amber,
        (-1 * progress).clamp(0, 1),
      )!;
      return GestureDetector(
        onTap: () => controller.swipeUp(),
        child: Transform.scale(
          scale: 1 + .1 * progress.clamp(0, 1),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.9),
                  spreadRadius: -10,
                  blurRadius: 20,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
            alignment: Alignment.center,
            child:  Icon(
              Icons.star,
              color: Theme.of(context).primaryColor,
              size: 40,
            ),
          ),
        ),
      );
    },
  );
}

//swipe card to the left side
Widget swipeLeftButton(AppinioSwiperController controller) {
  return ListenableBuilder(
    listenable: controller,
    builder: (context, child) {
      final SwiperPosition? position = controller.position;
      final SwiperActivity? activity = controller.swipeActivity;
      final double horizontalProgress =
          (activity is Swipe || activity == null) &&
                  position != null &&
                  position.offset.toAxisDirection().isHorizontal
              ? -1 * position.progressRelativeToThreshold.clamp(-1, 1)
              : 0;
      final Color color = Color.lerp(
        CupertinoColors.systemGrey2,
        const Color(0xFFFF3868),
        (-1 * horizontalProgress).clamp(0, 1),
      )!;
      return GestureDetector(
        onTap: () => controller.swipeLeft(),
        child: Transform.scale(
          // Increase the button size as we swipe towards it.
          scale: 1 + .1 * horizontalProgress.clamp(0, 1),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.9),
                  spreadRadius: -10,
                  blurRadius: 20,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.close,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      );
    },
  );
}

