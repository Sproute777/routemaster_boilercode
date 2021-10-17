import 'package:flutter/material.dart';
import '../db/data_base.dart';



class ContentPage extends StatelessWidget {
  const ContentPage({required this.family, required this.content, Key? key})
      : super(key: key);

  final Family family;
  final Content content;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('content ${content.name}')),
        body: 
       const Center(child: Text('Person page'))
        
        // Text('${person.name} ${family.name} is ${person.age} years old'),
      );
}