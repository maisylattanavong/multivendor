import 'package:flutter/material.dart';

class SubCategoryProducts extends StatelessWidget {
  final String mainCategName;
  final String subcategName;
  const SubCategoryProducts({Key? key, required this.subcategName,required this.mainCategName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios_new,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
      },),title: Text(subcategName, style:const TextStyle(color: Colors.black),),),
      body: Center(child: Text(mainCategName),),
    );
  }
}
