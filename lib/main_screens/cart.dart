import 'package:flutter/material.dart';
import 'package:test_project/widgets/Appbar.dart';
import 'package:test_project/widgets/yellow_button.dart';

class CartScreen extends StatefulWidget {
  final Widget? back;
  const CartScreen({Key?key,  this.back}):super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: widget.back,
            title: const AppBarTitle(title: 'Cart'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever,
                    color: Colors.red,
                  ))
            ],
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your cart is emty',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 50),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.6,
                  onPressed: () {
                    Navigator.canPop(context)?Navigator.pop(context):
                    Navigator.pushReplacementNamed(context, '/customer_home');
                  },
                  child: const Text(
                    'continue shoppping',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          )),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      'Total: \$',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '00.00',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
                YellowButton(
                  width: 0.45,
                  label: 'CHECK OUT',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
