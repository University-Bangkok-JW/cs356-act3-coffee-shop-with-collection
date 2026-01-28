// 1640705339 Jetsada Wijit

void main() {

  // initial an empty list.
  List<String> fruits = ["Apple", "Banana"];

  fruits.add("Orange");
  fruits.removeAt(0);
  fruits.remove("Orange");

  String myFavFruit = fruits[0];

  print(myFavFruit);
}
