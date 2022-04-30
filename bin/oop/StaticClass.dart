void main(){
  Employee juwon1 = Employee("주1");
  Employee juwon2 = Employee("주2");
  Employee juwon3 = Employee("주3");

  juwon1.printNameAndBuildingName();
  juwon2.printNameAndBuildingName();
  juwon3.printNameAndBuildingName();

  Employee.buildingName = "타워";
  Employee.printBuilding();

  juwon1.printNameAndBuildingName();
  juwon2.printNameAndBuildingName();
  juwon3.printNameAndBuildingName();

}

class Employee{
  // 클래스 귀속
  static String? buildingName;
  // 인스턴스 귀속
  final String name;

  Employee(this.name);

  void printNameAndBuildingName(){
    print("제 이름은 $name입니다. $buildingName 건물에서 근무하고 있습니다. ");
  }

  static void printBuilding(){
    print("저희는 $buildingName 건물에서 근무 중 입니다.");
  }
}