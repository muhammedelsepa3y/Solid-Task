class Employee {
  String email;
  Employee({
    required this.email,
  });
}

class EmployeeService {
  List<Employee> employees = [];
  EmailService emailService = EmailService();
  void employeeRegistration(Employee employee) {
    employees.add(employee);
    emailService.SendEmail(employee.email, "Registration", "Congratulation !");
  }
}

class EmailService {
  void SendEmail(String email, String subject, String message) {
    dynamic emailMessage;
    emailMessage.From.Add('username');
    emailMessage.To.Add('receiver');
    emailMessage.Subject = subject;
    emailMessage.Body = 'email body';
  }
}
