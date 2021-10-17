import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                 const SizedBox(height: 10),
            Hero(
              tag: 'my-hero',
              child: Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () => Routemaster.of(context).push('/hero/aim'),
              child: const Text('Test hero animations work',style: TextStyle(color: Colors.white)),
            ),
       
          ],
        ),
      ),
    );
  }
}

class AimPage extends StatelessWidget {
  const AimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 300),
          Center(
            child: Hero(
              tag: 'my-hero',
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
