// 1640705339 Jetsada Wijit

class CoffeeOrder {
  final String type;
  final String size;
  final int sugar;
  final bool isIced;
  final double price;
  double netTotal = 0.0;

  CoffeeOrder({
    required this.type,
    required this.price,
    this.size = 'Medium',
    this.sugar = 100,
    this.isIced = false,
  }) {
    netTotal = isIced ? price + 5 : price;
  }

  void printLabel() {
    double finalPrice = isIced ? price + 5 : price;
    String sugarTag = (sugar == 100) ? "Normal Sweet" : "$sugar% Sweet";
    String tempTag = isIced ? "Iced" : "Hot";

    print("-----------------------------");
    print("ORDER: $tempTag $type");
    print("SIZE : $size");
    print("NOTE : $sugarTag");
    print("TOTAL: ${finalPrice.toStringAsFixed(2)} THB");
    print("-----------------------------");
  }
}

void main() {
  CoffeeOrder order1 = CoffeeOrder(type: "Americano", price: 80, size: "Large");
  // order1.printLabel();
  var order2 = CoffeeOrder(
      type: "Latte",
      price: 120,
      sugar: 50,
      isIced: true,
      size: "Large"
  );
  CoffeeOrder order3 = CoffeeOrder(
      type: "Americano",
      price: 80,
      size: "Large",
      isIced: true, sugar: 0
  );

  List<CoffeeOrder> myOrders = [order1, order2, order3];

  // Order price : Cheap to Expensive
  myOrders.sort((a, b) => a.price.compareTo(b.price));

  // Order price : Expensive to Cheap
  myOrders.sort((a, b) => b.netTotal.compareTo(a.netTotal));

  for (CoffeeOrder order in myOrders) {
    order.printLabel();
  }
}
