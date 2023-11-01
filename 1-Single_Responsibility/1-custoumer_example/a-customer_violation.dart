class Customer {
  // Responsibility: Model customer data
  String? name;
  Customer(this.name);
}

class CustomerRepository {
  // Responsibility: Storing customers
  void storeCustomer(Customer customer) {}
}

class ReportGenerator {
  // Responsibility: Generating customer reports
  void generateCustomerReport(Customer customer) {}
}
