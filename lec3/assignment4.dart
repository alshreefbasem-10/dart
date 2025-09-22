class Product {
  int _id;
  String _name = '';
  int _price = 0;

  int get id => _id;

  Product(this._id, this._name, this._price) {}

  set setname(String name) {
    if (name.isNotEmpty) {
      this._name = name;
    } else {
      print("Username cannot be empty");
    }
  }

  get getname => this._name;

  set setprice(int price) {
    if (price > 0) {
      this._price = price;
      print("price is $price");
    } else {
      print("price must be more than 0");
    }
  }
}

class Cart {
  List<Product> products = [];

  void addproduct(Product p) {
    products.add(p);
    print("${p._name} is added");
  }

  void removeProduct(int id) {
    products.removeWhere((p) => p._id == id);
    print("Removed product with id: $id");
  }

  void showCart() {
    double total = 0;
    for (var p in products) {
      print(p);
      total += p._price;
    }
    print("Total Price = ${total}\n");
  }
}

void main() {
  Product p1 = Product(1, "Laptop", 1500);
  Product p2 = Product(2, "Headphones", 200);
  Product p3 = Product(3, "Airpodes", 0);

  Cart cart = Cart();

  cart.addproduct(p1);
  cart.addproduct(p2);
  cart.addproduct(p3);

  cart.showCart();
}
