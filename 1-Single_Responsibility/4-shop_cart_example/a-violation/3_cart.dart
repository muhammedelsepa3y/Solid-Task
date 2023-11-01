import '1_product.dart';
import '2_stock.dart';

class Cart {
  List<Product> cartProducts = [];

  void removeFromCart(Product product) {
    if (cartProducts.contains(product)) cartProducts.remove(product);
  }

  bool addToCart(Product product) {
    //check available quantity
    int quantityInStock = Stock.products
        .firstWhere((stockProduct) => stockProduct.code == product.code)
        .quantity;

    if (quantityInStock >= product.quantity) {
      cartProducts.add(product);
      return true;
    }

    return false;
  }

  void clearCart() {
    cartProducts.clear();
  }

  int get itemsCount => cartProducts.length;
}

class Invoice {
  void createInvoice(List<Product> cartProducts) {
    // Calculate total price
    double totalPrice = 0;
    cartProducts.forEach((product) => totalPrice += product.price);

    // Get customer data and create invoice
    // Save to database
    // Print invoice
    // Send invoice to customer email

    print(
        'Invoice created with total price: \$${totalPrice.toStringAsFixed(2)}');
  }
}
