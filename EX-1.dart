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
  int zipCode;
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
  Employee.mobileDev(String name, double salary, Address address, int years)
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
  Address addr = Address("PL1", "Phnom Penh", 12000);
  Employee emp = Employee.mobileDev("bot", 9999, addr, 2);

  print("Name: ${emp.name}");
  print("City: ${emp.address.city}");
  print("Experience: ${emp.yearsOfExperience}years");
  print("Skills: ${emp.skills.map((s) => s.name).join(', ')}");
  print("Total Salary:\$${emp.computeSalary()}");
}
