abstract class Employee {
  String id;
  String name;
  double salary;
  String employeeType;

  Employee(
      {required this.id,
      required this.name,
      required this.salary,
      required this.employeeType});

  double calcHoursBonus(double hours);

  @override
  String toString() {
    return 'Employee id : $id , name : $name';
  }
}

class RegularEmployee extends Employee {
  RegularEmployee({
    required String id,
    required String name,
    required double salary,
  }) : super(id: id, name: name, salary: salary, employeeType: 'regular');

  @override
  double calcHoursBonus(double hours) {
    return ((salary / 30) / 8) * hours;
  }

  @override
  String toString() {
    return 'Regular Employee id : $id , name : $name';
  }
}

class ManagerEmployee extends Employee {
  ManagerEmployee({
    required String id,
    required String name,
    required double salary,
  }) : super(id: id, name: name, salary: salary, employeeType: 'manager');

  @override
  double calcHoursBonus(double hours) {
    return ((salary / 30) / 8) * hours * 2;
  }

  @override
  String toString() {
    return 'Manager Employee id : $id , name : $name';
  }
}

//Client Code
void main(List<String> args) {
  Employee emp1 = RegularEmployee(
    id: '1',
    name: 'Ahmed',
    salary: 1000,
  );
  print("$emp1 Bonus : ${emp1.calcHoursBonus(5)}");

  Employee emp2 = ManagerEmployee(
    id: '2',
    name: 'Mohamed',
    salary: 1000,
  );
  print("$emp2 Bonus : ${emp2.calcHoursBonus(5)}");
}
