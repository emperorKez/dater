import 'package:dater/app/view/widget/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: const BottomNavBar(activeIndex: 1),
      body: body(context),
    ));
  }

  Widget body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        const SizedBox(
          height: 20,
        ),
        topContainer(context),
        const SizedBox(
          height: 20,
        ),
        const Text('Upgrade to Dater Plus for more Top Picks'),
        const SizedBox(
          height: 20,
        ),
        gridContainer()
      ],
    );
  }

  Widget topContainer(BuildContext context) {
    return ToggleSwitch(
      minWidth: MediaQuery.of(context).size.width * 0.45,
      minHeight: 40,
      fontSize: 16.0,
      initialLabelIndex: 1,
      activeBgColor: [Theme.of(context).primaryColor],
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.white,
      inactiveFgColor: Colors.black,
      totalSwitches: 2,
      borderColor: [Colors.grey.withOpacity(0.3)],
      borderWidth: 1,
      dividerColor: Colors.grey.withOpacity(0.3),
      dividerMargin: 2.0,
      labels: const ['4 Likes', '3 Top picks'],
      centerText: true,
      cornerRadius: 20,
      onToggle: (index) {},
    );
  }

  Widget gridContainer() {
    return GridView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          childAspectRatio: 0.85),
      children: [
        pictureContainer('assets/images/picture.jpg', '5h left'),
        pictureContainer('assets/images/picture.jpg', '4h left'),
        pictureContainer('assets/images/picture.jpg', '8h left'),
        pictureContainer('assets/images/picture.jpg', '1h left'),
        pictureContainer('assets/images/picture.jpg', '3h left'),
        pictureContainer('assets/images/picture.jpg', '5h left'),
      ],
    );
  }

  Widget pictureContainer(String asset, String caption) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  asset,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(
                      Icons.stars,
                      color: Colors.redAccent,
                    ))
              ],
            ),
          ),
          Text(caption)
        ],
      ),
    );
  }
}
