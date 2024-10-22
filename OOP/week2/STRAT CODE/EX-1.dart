enum Skill { FLUTTER, DART, OTHER }

class Address {
  String _street;
  String _city;
  String _zipCode;
  Address(this._street, this._city, this._zipCode);
  @override
  String toString() {
    return 'Street: $_street, City: $_city, ZipCode: $_zipCode';
  }
}

const baseSalary = 40000;

class Employee {
  String name;
  double yearsOfExperience;
  String title;
  List<Skill> skills = [];

  //defualt constructor
  Employee(this.name, this.yearsOfExperience, this.title);

  void addSkill(Skill skill) {
    skills.add(skill);
  }

  void skillList(List<Skill> moreSkills) {
    skills.addAll(moreSkills);
  }

  double getSalary() {
    double salarySkill = 0;
    for (var skill in skills) {
      switch (skill) {
        case Skill.FLUTTER:
          salarySkill += 5000;
          break;
        case Skill.DART:
          salarySkill += 3000;
          break;
        case Skill.OTHER:
          salarySkill += 1000;
          break;
      }
    }
    return salarySkill + baseSalary + yearsOfExperience * 2000;
  }

  void printDetails() {
    double salary = getSalary();
    print(
        'Employee: $name, Experience: $yearsOfExperience, Title: $title, Salary: $salary');
  }
}

void main() {
  var emp1 = Employee('Sokea', 2, 'dev');
  emp1.addSkill(Skill.DART);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 4, 'consultant');
  emp2.skillList([Skill.FLUTTER, Skill.OTHER]);
  emp2.printDetails();
}
