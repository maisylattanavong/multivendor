import 'package:flutter/material.dart';
import 'package:test_project/widgets/Appbar.dart';

class SupplierOrders extends StatelessWidget {
  const SupplierOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'SupplierOrders'),
        leading: const AppBarBackButton(),
      ),
    );
  }
}
