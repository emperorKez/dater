import 'package:dater/app/view/widget/bottom_nav.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        title: const Text('Discover'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.tune_sharp))
        ],
      ),
      bottomNavigationBar: const BottomNavBar(activeIndex: 0),
      body: body(context),
    ));
  }

  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: 8,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.75),
          itemBuilder: (context, index) {
            return gridItem();
          }),
    );
  }

  Widget gridItem() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'assets/images/picture.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('John Doe'),
          // const SizedBox(
          //   height: 8,
          // ),
          const Row(
            children: [Icon(Icons.location_pin), Text('10 miles away')],
          )
        ],
      ),
    );
  }
}
