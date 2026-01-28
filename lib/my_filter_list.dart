// 1640705339 Jetsada Wijit

void main() {
  var numbers = [1, 23, 43, 55, 100, 2, 5, 6];

  List<int> lessThanTen = numbers.where((n) => n < 10).toList();
  print("Less than 10 : $lessThanTen");

  List<int> result10to50 = numbers
      .where((n) => n >= 10 && n <= 50).toList();
  print("10 to 50 : $result10to50");

  print("Unsorted : $numbers");

  numbers.sort((a,b) => a.compareTo(b));
  print("Sorted   : $numbers");
}
