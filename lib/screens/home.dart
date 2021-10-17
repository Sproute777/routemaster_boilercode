import '../db/data_base.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

String _title(BuildContext context) =>
    (context as Element).findAncestorWidgetOfExactType<MaterialApp>()!.title;


class HomePage extends StatelessWidget {
  const HomePage({required this.families, Key? key}) : super(key: key);
  final List<Family> families;

  @override
  Widget build(BuildContext context) {
    // final info = _info(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        actions: [
        IconButton(onPressed: (){
          Routemaster.of(context).push('/preffence');
        }, icon: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            for (final f in families)
                Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal:8.0 , vertical: 2),
            width: double.infinity,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border:  Border.all(
                      color: Colors.white54,
                    )
            ),
            child: ListTile(
                title: Text(f.name),
                onTap: () =>  Routemaster.of(context).push('/family/${f.id}'),
            ),
          )])
          ),
 floatingActionButton: Column(
   mainAxisAlignment: MainAxisAlignment.end,
   children: [
     
     FloatingActionButton(onPressed: (){
     Routemaster.of(context).push('/tab-bar/settings');
   },child: const Text('tab/bar/settings',style: TextStyle(fontSize: 10),)),
     FloatingActionButton(onPressed: (){
     Routemaster.of(context).push('/stack/one');
   },child: const Text('stack',style: TextStyle(fontSize: 10),),),
     FloatingActionButton(onPressed: (){
     Routemaster.of(context).push('/custom-transitions');
   },child: const Text('custom_transition',style: TextStyle(fontSize: 10),),),
     FloatingActionButton(onPressed: (){
     Routemaster.of(context).push('/notifications');
   },child: const Text('notifications',style: TextStyle(fontSize: 10),),),
   
   
   ]
 ),
          );
  }
}