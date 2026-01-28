// 1640705339 Jetsada Wijit

void main() {
  List<int> numbers = [1, 2, 3];

  print("Original Numbers : $numbers");

  // Multiply every number by 2
  List<int> double = numbers.map((n) => n * 2).toList();

  print("New Numbers      : $double");
}
