void main(){
  Family f = Family("윤주원패밀리", ["윤주원1", "윤주원2", "윤주원3"]);
  f.sayHello();
  f.introduce();

  print(f.name);

  // const로 선언한 생성자가 같은 요소를 갖는다면 같은 주소값을 같는다
  Family f2 = Family("윤주원패밀리2", ["윤주원1", "윤주원2", "윤주원3"]);
  f2.sayHello();
  f2.introduce();

  print(f.name);

  print(f == f2);

  Family family =  Family.fromList([["패밀리5","패밀리2","패밀리3","패밀리4",], "d"]);

  family.sayHello();
  family.introduce();

  // family.firstMember = "setter String";
  print(family.firstMember);

}


class Family{
  final String name;
  final List<String> members;
  // final 키워드를 사용해 Imutable 프로그래밍

  //  생성자 생성
  Family(this.name, this.members);

  Family.fromList(List values) : members = values[0], name = values[1];

  // void setName(String name){
  //   this.name = name;
  // }

  void sayHello(){
    print("안녕하세요 $name 입니다");
  }

  void introduce(){
    print("저희 멤버는 $members가 있습니다.");
  }

  // getter와 Setter는 () 대신에 {}를 사용함
  String get firstMember{
    return members[0];
  }

  // final로 immutable로 만들고 setter대신에 생성자로 넣는다 => JPA?
  // set firstMember (String name){
  //   members[0] = name;
  // }

}