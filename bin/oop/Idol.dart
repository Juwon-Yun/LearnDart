void main(){
  Idol idol = Idol("윤주원패밀리", ["윤주원1", "윤주원2", "윤주원3"]);
  idol.sayHello();
  idol.introduce();

}

class Idol{
  String name = "블랙핑크";
  List<String> members = ["지수", "제니", "리사", "로제"];

  //  생성자 생성
  Idol(String name, List<String> members);

  void setName(String name){
    this.name = name;
  }

  void sayHello(){
    print("안녕하세요 블랙핑크입니다.");
  }

  void introduce(){
    print("저희 멤버는 지수, 제니, 리사, 로제가 있습니다.");
  }

}