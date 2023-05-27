import 'package:flutter/material.dart';
import 'package:test_project/widgets/Appbar.dart';

class ManageProducts extends StatelessWidget {
  const ManageProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'ManageProducts'),
        leading: const AppBarBackButton(),
      ),
    );
  }
}
