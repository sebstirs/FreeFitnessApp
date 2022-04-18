class User {
  final String Exercise;
  final String Sets;
  final String Reps;

  const User({
    required this.Exercise,
    required this.Sets,
    required this.Reps,
  });

  User copy({
    String? Exercise,
    String? Sets,
    String? Reps,
  }) =>
      User(
        Exercise: Exercise ?? this.Exercise,
        Sets: Sets ?? this.Sets,
        Reps: Reps ?? this.Reps,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          Exercise == other.Exercise &&
          Sets == other.Sets &&
          Reps == other.Reps;

  @override
  int get hashCode => Exercise.hashCode ^ Sets.hashCode ^ Reps.hashCode;
}
