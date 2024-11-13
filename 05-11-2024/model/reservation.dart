import "guest.dart";
import "rooms.dart";
class Reservation {
  final int reservationId;
  final Guest guest;
  final Room room;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  late double totalCost;

  Reservation({
    required this.reservationId,
    required this.guest,
    required this.room,
    required this.checkInDate,
    required this.checkOutDate,
  }) {
    totalCost = calculateTotalCost();
  }

  // Method to calculate the total cost of the stay
  double calculateTotalCost() {
    int numberOfNights = checkOutDate.difference(checkInDate).inDays;
    return numberOfNights * room.price;
  }

  // Method to confirm the reservation
  void confirmReservation() {
    room.bookRoom(); // Mark the room as booked
    print('Reservation confirmed for ${guest.name} in Room ${room.roomNumber}');
  }

  // Method to cancel the reservation
  void cancelReservation() {
    room.releaseRoom(); // Mark the room as available
    print('Reservation cancelled for ${guest.name}');
  }

  @override
  String toString() {
    return 'Reservation $reservationId for ${guest.name} in Room ${room.roomNumber}, '
           'from ${checkInDate.toLocal()} to ${checkOutDate.toLocal()}, Total Cost: \$$totalCost';
  }
}
