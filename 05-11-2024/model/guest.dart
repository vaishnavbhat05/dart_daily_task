class Guest {
  final String name;
  final String contactInfo;
  final int id; // Unique ID for the guest

  Guest({
    required this.id,
    required this.name,
    required this.contactInfo,
  });

  @override
  String toString() {
    return 'Guest $id: $name, Contact: $contactInfo';
  }
}
