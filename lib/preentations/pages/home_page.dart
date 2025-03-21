import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.help_outline)),
          Builder(
            builder:
                (context) => IconButton(
                  onPressed: () {
                    _showPopupMenu(context);
                  },
                  icon: Icon(Icons.help),
                ),
          ),
        ],
        // leading: Builder(
        //   builder:
        //       (context) => IconButton(
        //         onPressed: () {
        //           _showPopupMenu(context);
        //         },
        //         icon: Icon(Icons.menu),
        //       ),
        // ),
        title: const Text("Home Page"),
      ),
      body: Center(child: const Text("Home Page")),
    );
  }

  void _showPopupMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(80, 90, 0, 0),
      items: [
        PopupMenuItem(
          value: "learnCustomScrollView",
          child: Text("Learn CustomScrollView"),
        ),
        PopupMenuItem(value: "screen2", child: Text("Go to screen2")),
        PopupMenuItem(value: "screen3", child: Text("Go to screen3")),
      ],
    ).then((value) {
      if (value == null) return;
      switch (value) {
        case 'learnCustomScrollView':
          context.goNamed('lcsv');
          break;
        default:
          print("invalid screen");
          break;
      }
    });
  }
}
