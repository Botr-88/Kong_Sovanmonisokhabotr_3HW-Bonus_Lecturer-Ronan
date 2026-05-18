
enum Skill {
  FLUTTER,
  DART,
  OTHER;

  @override
  String toString() => name;
}

class Address {
  String street;
  String city;
  String zipCode;
  Address(this.street, this.city, this.zipCode);
}

class Employee {
  String _name;
  double _baseSalary;
  List<Skill> _skills;
  Address _address;
  int _yearsOfExperience;
  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience,
  );
  Employee.mobileDeveloper(String name, double salary, Address address, int years)
    : _name = name,
      _baseSalary = 40000,
      _skills = [Skill.FLUTTER, Skill.DART],
      _address = address,
      _yearsOfExperience = years;
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  void printDetails() {
    print('--- Employee Details ---');
    print('Name: $_name');
    print('City: ${_address.city}');
    print('Street: ${_address.street}');
    print('Zip Code: ${_address.zipCode}');
    print('Experience: $_yearsOfExperience years');
    print('Skills: ${_skills.map((s) => s.name).join(', ')}');
    print('Total Salary: \$${computeSalary()}');
    print('');
  }


  double computeSalary() {
    double total = _baseSalary;
    total += _yearsOfExperience * 2000;
    for (var skill in _skills) {
      if (skill == Skill.FLUTTER) {
        total += 5000;
      } else if (skill == Skill.DART) {
        total += 3000;
      } else {
        total += 1000;
      }
    }
    return total;
  }
}

void main() {
  // Address addr = Address("PL1", "Phnom Penh", 12000);
  // Employee emp = Employee.mobileDev("bot", 9999, addr, 2);

  // print("Name: ${emp.name}");
  // print("City: ${emp.address.city}");
  // print("Experience: ${emp.yearsOfExperience}years");
  // print("Skills: ${emp.skills.map((s) => s.name).join(', ')}");
  // print("Total Salary:\$${emp.computeSalary()}");
   var emp1 = Employee(
    'Sokea',
    40000,
    [Skill.DART, Skill.FLUTTER],
    Address('Street 1', 'Phnom Penh', '12001'),
    10,
  );
  emp1.printDetails();

  var emp2 = Employee(
    'Ronan',
    45000,
    [Skill.FLUTTER, Skill.OTHER, Skill.DART],
    Address('Street 6A', 'Phnom Penh', '12000'),
    10,
  );
  emp2.printDetails();

}
