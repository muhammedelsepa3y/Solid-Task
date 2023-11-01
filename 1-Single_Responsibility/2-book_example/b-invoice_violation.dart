import 'a-book_model.dart';

class Invoice {
  Book book;
  int quantity;
  double discountRate;
  double taxRate;

  Invoice({
    required this.book,
    required this.quantity,
    required this.discountRate,
    required this.taxRate,
  });

  double calculateTotal() {
    double price = ((book.price - book.price * discountRate) * quantity);
    double priceWithTaxes = price * (1 + taxRate);
    return priceWithTaxes;
  }
}

class InvoicePrinter {
  void printInvoice(Invoice invoice) {
    print(
        '${invoice.quantity} x ${invoice.book.name}       ${invoice.book.price}\$');
    print('totalPrice x ${invoice.calculateTotal()}');
    print('discountRate x ${invoice.discountRate}\$');
    print('taxRate x ${invoice.taxRate}\$');
  }
}

class InvoiceFileSaver {
  void saveToFile(Invoice invoice, String fileName) {}
}
