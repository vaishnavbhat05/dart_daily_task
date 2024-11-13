class Room {
  final int roomNumber;
  final String type; // e.g., "Single", "Double", "Suite"
  double price;
  bool isAvailable;

  Room({
    required this.roomNumber,
    required this.type,
    required this.price,
    this.isAvailable = true, // Default to available
  });

  // Method to mark the room as booked
  void bookRoom() {
    isAvailable = false;
  }

  // Method to mark the room as available
  void releaseRoom() {
    isAvailable = true;
  }

  @override
  String toString() {
    return 'Room $roomNumber: $type, \$$price per night, Available: $isAvailable';
  }
}
