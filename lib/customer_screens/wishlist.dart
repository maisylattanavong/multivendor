import 'package:flutter/material.dart';
import 'package:test_project/widgets/Appbar.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'WishlistScreen'),
        leading: const AppBarBackButton(),
      ),
    );
  }
}
