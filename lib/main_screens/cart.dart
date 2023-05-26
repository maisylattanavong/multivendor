import 'package:flutter/material.dart';
import 'package:test_project/main_screens/customer_home.dart';
import 'package:test_project/widgets/Appbar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomerHomeScreen()));
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
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(25)),
              child: MaterialButton(
                child: const Text('CHECK OUT'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
