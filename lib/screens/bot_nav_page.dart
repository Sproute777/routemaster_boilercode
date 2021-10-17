import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    final pageState = IndexedPage.of(context);
    final selectedIndex = pageState.index;
    final stack = pageState.stacks[selectedIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navigation Bar')),
      body: PageStackNavigator(
        key: ValueKey(selectedIndex),
        stack: stack,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            pageState.index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'One',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explicit),
            label: 'Two',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Three',
          ),
        ],
      ),
    );
  }
}

class BottomContentPage extends StatelessWidget {
  const BottomContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bottom bar page 1'),
            ElevatedButton(
              onPressed: () {
                Routemaster.of(context)
                    .push('/bottom-navigation-bar/threepage');
              },
              child: const Text('Push page Android-style'),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomContentPage2 extends StatelessWidget {
  const BottomContentPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: 
            Text('Bottom bar page 2'),  
      ),
    );
  }
}

class BottomNavigationBarReplacementPage extends StatelessWidget {
  const BottomNavigationBarReplacementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navigation Bar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Routemaster.of(context).replace('/bottom-navigation-bar'),
          child: const Text('Replace: Bottom Navigation Bar page'),
        ),
      ),
    );
  }
}

// class DoubleBackPage extends StatelessWidget {
//   // ignore: use_key_in_widget_constructors
//   const DoubleBackPage();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 await Routemaster.of(context).pop();
//                 await Routemaster.of(context).pop();
//               },
//               child: const Text('Go back twice'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Routemaster.of(context)
//                     .replace('/bottom-navigation-bar/replaced');
//               },
//               child: const Text('Push replacement'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
