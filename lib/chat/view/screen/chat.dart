import 'package:dater/app/view/widget/bottom_nav.dart';
import 'package:dater/app/view/widget/header.dart';
import 'package:dater/chat/view/screen/chat_me.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final names = [
      'Rosa Richards',
      'Jason Mandela',
      'John Doe',
      'James Watson',
      'Michael Johnson',
      'Jonny Bravo',
      'James Watson'
    ];

    return SafeArea(
        child: Scaffold(
      appBar: const Header(title: 'Chat'),
      bottomNavigationBar: const BottomNavBar(activeIndex: 3),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            searchForm(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white10,
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      height: 60,
                      child: Row(
                        children: [
                          const Badge(
                              alignment: AlignmentDirectional(1, 1),
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.all(2),
                              label: Icon(
                                Icons.circle,
                                size: 10,
                                color: Colors.green,
                              ),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/picture.jpg'),
                                radius: 25,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: ListTile(
                            title: Text(names[index]),
                            subtitle: const Text(
                              'Hey, how is life going',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            trailing: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('9:27 pm'),
                                Text(index.toString())
                              ],
                            ),
                            contentPadding: EdgeInsets.zero,
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ChatMeScreen())),
                          )),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
      //),
    ));
  }

  Widget searchForm() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: const InputDecoration(
          isDense: true,
          filled: true,
          hintText: 'Search...',
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
