enum DeliveryType { DELIVERY, PICKUP }

class Address {
  String street;
  String city;
  Address(this.street, this.city);
}

class Product {
  String name;
  double price;
  Product(this.name, this.price);
}

class Order {
  List<Product> products;
  DeliveryType deliveryType;
  Address? address;
  Order(this.products, this.deliveryType, this.address);
  double getTotal() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }

  void showOrder() {
    print("Items:");

    for (var product in products) {
      print("${product.name}: \$${product.price}");
    }

    print("Total: \$${getTotal()}");

    if (address != null) {
      print("Address: ${address!.street}, ${address!.city}");
    }
  }
}

void main() {
  Product p1 = Product("Monitor", 33);
  Product p2 = Product("speaker", 30);
  Address add = Address("Preakleap", "Phnom Penh");
 Order order = Order(
    [p1, p2],
    DeliveryType.DELIVERY,
    add,
  );

    order.showOrder();
}



