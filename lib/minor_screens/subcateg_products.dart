import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class SubCategoryProducts extends StatelessWidget {
  final String mainCategName;
  final String subcategName;
  const SubCategoryProducts(
      {Key? key, required this.subcategName, required this.mainCategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const AppBarBackButton(),
        title: AppBarTitle(title: subcategName),
      ),
      body: Center(
        child: Text(mainCategName),
      ),
    );
  }
}
