class Associate {
  final int id;
  final String name;
  final String gender;
  final String department;
  final List<String> awards;
  final String picture;
  final int registered;
  const Associate(
      {required this.id,
      required this.name,
      required this.gender,
      required this.department,
      required this.awards,
      required this.picture,
      required this.registered});

  @override
  List<Object?> get props => [
        id,
        name,
        gender,
        department,
        awards,
        picture,
        registered,
      ];
}
