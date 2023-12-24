class Booking{
  String id,imageUrl,customerName,bookingFrom,bookingTo,bookingDate;

//<editor-fold desc="Data Methods">
  Booking({
    required this.id,
    required this.imageUrl,
    required this.customerName,
    required this.bookingFrom,
    required this.bookingTo,
    required this.bookingDate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Booking &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              imageUrl == other.imageUrl &&
              customerName == other.customerName &&
              bookingFrom == other.bookingFrom &&
              bookingTo == other.bookingTo &&
              bookingDate == other.bookingDate);

  @override
  int get hashCode =>
      id.hashCode ^
      imageUrl.hashCode ^
      customerName.hashCode ^
      bookingFrom.hashCode ^
      bookingTo.hashCode ^
      bookingDate.hashCode;

  @override
  String toString() {
    return 'Booking{' +
        ' id: $id,' +
        ' imageUrl: $imageUrl,' +
        ' customerName: $customerName,' +
        ' bookingFrom: $bookingFrom,' +
        ' bookingTo: $bookingTo,' +
        ' bookingDate: $bookingDate,' +
        '}';
  }

  Booking copyWith({
    String? id,
    String? imageUrl,
    String? customerName,
    String? bookingFrom,
    String? bookingTo,
    String? bookingDate,
  }) {
    return Booking(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      customerName: customerName ?? this.customerName,
      bookingFrom: bookingFrom ?? this.bookingFrom,
      bookingTo: bookingTo ?? this.bookingTo,
      bookingDate: bookingDate ?? this.bookingDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'imageUrl': this.imageUrl,
      'customerName': this.customerName,
      'bookingFrom': this.bookingFrom,
      'bookingTo': this.bookingTo,
      'bookingDate': this.bookingDate,
    };
  }

  factory Booking.fromMap(Map<String, dynamic> map) {
    return Booking(
      id: map['id'] as String,
      imageUrl: map['imageUrl'] as String,
      customerName: map['customerName'] as String,
      bookingFrom: map['bookingFrom'] as String,
      bookingTo: map['bookingTo'] as String,
      bookingDate: map['bookingDate'] as String,
    );
  }

//</editor-fold>
}
List<Booking> bookingList=[
  Booking(id: "1", imageUrl: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", customerName: "Ali", bookingFrom: "10 aug,2023", bookingTo: "10 aug,2024", bookingDate: "9 aug,2025"),
  Booking(id: "2", imageUrl: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", customerName: "Maaz", bookingFrom: "12 aug,2023", bookingTo: "23 aug,2024", bookingDate: "4 aug,2025"),
  Booking(id: "3", imageUrl: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", customerName: "Umar", bookingFrom: "14 aug,2023", bookingTo: "24 aug,2024", bookingDate: "6 aug,2025"),
  Booking(id: "4", imageUrl: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", customerName: "Ramzan", bookingFrom: "16 aug,2023", bookingTo: "26 aug,2024", bookingDate: "8 aug,2025"),
  Booking(id: "5", imageUrl: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg", customerName: "Hasan", bookingFrom: "18 aug,2023", bookingTo: "27 aug,2024", bookingDate: "1 aug,2025"),
];