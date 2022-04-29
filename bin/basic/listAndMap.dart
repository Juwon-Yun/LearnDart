void main(){
  List<int> strList = [1,2,3,4,5,6];

  strList.add(89891);
  strList.remove(89891);
  print(strList.asMap());

  var temp = strList.indexWhere((element) => element == 1);

  print(temp);
  print(strList);

  print(strList.length);
  print(strList.runtimeType);
  print(strList.iterator);

  Map<int, String> userMap = {
    0 : "윤주원0",
    1 : "윤주원1",
    2 : "윤주원2",
    3 : "윤주원3",
    4 : "윤주원4",
  };

  userMap.addAll({
    5 : "윤주원5",
    6 : "윤주원6",
    7 : "윤주원7",
  });

  userMap[8] = "윤주원8";
  userMap.remove(5); // key 중에 5를 지운다. index 5를 지우는게 아님

  print(userMap);
  print(userMap.keys);
  print(userMap.values);


  Map<int, dynamic> dynamicMap = {
    0 : false,
    1 : List<String>,
    3 : Set<String>
  };
  
  print("before addAll" + dynamicMap.toString());

  dynamicMap.addAll(userMap);

  print(dynamicMap);
}