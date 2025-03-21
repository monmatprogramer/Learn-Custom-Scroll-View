import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  final String message;
  const NotFoundScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(message)));
  }
}
