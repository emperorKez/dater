

import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header(
      {super.key,
      required this.title});
  final String title;

  @override
  State<Header> createState() => _HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class _HeaderState extends State<Header> {
  bool isSearching = false;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
      title: Text(widget.title, style: Theme.of(context).textTheme.headlineMedium,),
      centerTitle: true,
      elevation: 0.0,
      actions: const <Widget>[],
    );
  }
}
