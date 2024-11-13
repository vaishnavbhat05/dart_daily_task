import 'model/guest.dart';
import 'model/reservation.dart';
import 'model/rooms.dart';

void main() {
  // Create some rooms
  Room room101 = Room(roomNumber: 101, type: "Single", price: 100.0);
  // Room room102 = Room(roomNumber: 102, type: "Double", price: 150.0);

  // Create a guest
  Guest guest1 = Guest(id: 1, name: "Alice", contactInfo: "alice@example.com");

  // Create a reservation
  Reservation reservation1 = Reservation(
    reservationId: 1001,
    guest: guest1,
    room: room101,
    checkInDate: DateTime(2023, 12, 20),
    checkOutDate: DateTime(2023, 12, 25),
  );

  // Confirm the reservation
  reservation1.confirmReservation();

  // Print details
  print(reservation1);

  // Cancel the reservation
  reservation1.cancelReservation();
}
