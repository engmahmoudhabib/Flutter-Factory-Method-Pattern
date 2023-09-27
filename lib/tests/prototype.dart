
class Person {
  final String fName;
  final String lName;
  final String id;

  const Person({
    required this.id,
    required this.fName,
    required this.lName,
  });

  Person copyWith({
    String? fName,
    String? lName,
    String? id,
  }) {
    return Person(
      id: id ?? this.id,
      fName: fName ?? this.fName,
      lName: lName ?? this.lName,
    );
  }
}

void main() {
  Person p1 = const Person(
    id: "3",
    fName: "Mahmoud",
    lName: 'Habib',
  );

  // to create a copy of this class and change its value
  Person p2 = p1.copyWith(id: "5");

  print(p1.id);
  print(p1.fName);
  print(p1.lName);
  print(p2.id);
  print(p2.fName);
  print(p2.lName);
}


