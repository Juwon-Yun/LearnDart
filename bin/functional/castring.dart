void main(){
  print("-----List------");
  List<String> yunCompany = ["윤1","윤2","윤2","윤4"];

  print(yunCompany);
  print(yunCompany.asMap());
  print(yunCompany.toSet());

  print("-----Map------");
  Map yunCompanyMap = yunCompany.asMap();

  print(yunCompanyMap.keys.toList());
  print(yunCompanyMap.values.toList());

  print("-----Set------");
  Set yunCompanySet = yunCompany.toSet();
  print(yunCompanySet.toList());
  
  
  List<String> temp = ["temp1", "temp2", "temp3"];

  // 새로운 주솟값
  final newTemp = temp.map((element) => "temp $element");

  print(temp);
  print(newTemp); // iterable 형태로 변환이된다. (element)

  print(temp == newTemp);

  String fileName = "12345";

  final attachJpg = fileName.split("").map((e) => "$e.jpg").toList();
  print(attachJpg);
  print(attachJpg.runtimeType); // List<String>, not iterable type


  Map<String, String> mappingMap = {
    "mapKey1" : "mapValue1",
    "mapKey2" : "mapValue2",
    "mapKey3" : "mapValue3",
  };

  final mappedMap = mappingMap.map
    ((key, value) => MapEntry("$key 맵엔트리", "$value 맵엔트리"));

  print(mappedMap);
  print(mappingMap);

  final keys = mappedMap.keys.map((e) => "keys $e").toList();
  final values = mappedMap.values.map((e) => "values $e").toList();

  print(keys);
  print(values);
}

