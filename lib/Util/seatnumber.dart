class SeatNumber {
  final int rowI;
  final int colI;

  const SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI && colI == (other).colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  int getRow() {
    return rowI;
  }

  int getCol() {
    return colI;
  }

  @override
  String toString() {
    return '[$rowI][$colI]';
  }
}
