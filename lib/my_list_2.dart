// 1640705339 Jetsada Wijit

void main() {
  List<String> groupA = ["A", "B"];
  var groupB = ["C", "D", "E"];

  print("Group A      : $groupA");
  print("Group B      : $groupB");

  List<String> allStudents = [...groupA, ...groupB, "F"];

  print("All Students : $allStudents");
}