void main() {
  Map<String, dynamic> capital = {
    "Thailand": "Bangkok",
    "Japan": "Tokyo",
    "USA": "DC"
  };

  print(capital["Thailand"]);
  if (capital.containsKey("USA")) {
    print(capital["USA"]);
  } else {
    print("No data of USA");
  }

  for (dynamic data in capital.entries) {
    print("${data.key} : ${data.value}");
  }
}