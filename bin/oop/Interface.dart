void main(){

}

// interface class는 인스턴스화가 가능
// abstract class는 인스턴스화 불가능
// class FamilyInterface{
abstract class FamilyInterface{
  String familyName;

  FamilyInterface(this.familyName);

  void sayFamilyName(){}

}

class YunFamily implements FamilyInterface{
  @override
  String familyName;

  YunFamily(this.familyName);

  @override
  void sayFamilyName() {
    print("우리 가족명은 $familyName입니다.1");
  }

}

class KimFamily implements FamilyInterface{
  @override
  String familyName;

  KimFamily(this.familyName);

  @override
  void sayFamilyName() {
    print("우리 가족명은 $familyName입니다.2");
  }

}
