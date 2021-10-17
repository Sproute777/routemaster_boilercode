import 'package:flutter/material.dart';
import '../db/data_base.dart';
import 'package:routemaster/routemaster.dart';


class FamilyPage extends StatelessWidget {
  const FamilyPage({required this.family, Key? key}) : super(key: key);
  final Family family;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('family${family.name}')),
        body: ListView(
          children: [
            for (final p in family.contents)
              ListTile(
                title: Text(p.name),
                onTap: () =>  Routemaster.of(context).push('/family/${family.id}/person/${p.id}'),
              ),
          ],
        ),
      );
}
