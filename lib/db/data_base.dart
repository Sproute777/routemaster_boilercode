



class Family {
  Family({required this.id, required this.name, required this.contents});

  final String id;
  final String name;
  final List<Content> contents;

  Content person(String pid) => contents.singleWhere(
        (p) => p.id == pid,
        orElse: () => throw Exception('unknown person $pid for family $id'),
      );
}


class Content {
  Content({required this.id, required this.name
  });

  final String id;
  final String name;

}

class Families {
  static final data = [
    Family(
      id: 'f1',
      name: 'pages',
      contents: [
        Content(id: 'p1', name: 'Page1' ),
        Content(id: 'p2', name: 'Page2' ),


      ],
    ),
    Family(
      id: 'f2',
      name: 'pages_2_empty',
      contents: [
        // Content(id: 'p1', name: 'Gomez', page: 55),
        // Content(id: 'p2', name: 'Morticia', page: 50),
      ],
    ),
    Family(
      id: 'f3',
      name: 'pages_3_empty',
      contents: [
        // Content(id: 'p1', name: 'Mom', page: 54),
        // Content(id: 'p2', name: 'Dad', page: 55),
        // Content(id: 'p3', name: 'Will', page: 20),
 
      ],
    ),
  ];

  static Family family(String fid) => data.family(fid);
}

extension on List<Family> {
  Family family(String fid) => singleWhere(
        (f) => f.id == fid,
        orElse: () => throw Exception('unknown family $fid'),
      );
}
