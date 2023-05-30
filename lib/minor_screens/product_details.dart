import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: Swiper(
              itemBuilder: (context, index) {
                return const Image(
                    image: AssetImage('images/beauty/beauty0.jpg'));
              },
              itemCount: 1),
        )
      ]),
    );
  }
}
