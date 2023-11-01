abstract class Employee {
  String id;
  String name;
  double salary;

  Employee({
    required this.id,
    required this.name,
    required this.salary,
  });

  double calcHoursBonus(double hours) {
    return ((salary / 30) / 8) * hours;
  }

  @override
  String toString() {
    return 'Employee id : $id , name : $name';
  }
}

class FullTimeEmployee extends Employee {
  String employeeType;
  FullTimeEmployee({
    required String id,
    required String name,
    required double salary,
    required this.employeeType,
  }) : super(id: id, name: name, salary: salary);

  @override
  String toString() {
    return 'FullTimeEmployee with type: $employeeType Employee id : $id, name : $name';
  }
}

//Client Code
void main(List<String> args) {
  Employee emp1 = FullTimeEmployee(
    id: '1',
    name: 'Ahmed',
    salary: 1000,
    employeeType: 'FullTime',
  );
  print("$emp1 Bonus : ${emp1.calcHoursBonus(5)}");
}
