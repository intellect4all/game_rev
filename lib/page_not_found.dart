import 'package:flutter/material.dart';

class PageNotFoundScreen extends StatelessWidget {
  static const String routeName = '/page-not-found';
  const PageNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: const Center(
        child: Text('Page Not Found'),
      ),
    );
  }
}
