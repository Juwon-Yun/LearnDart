void main(){
  List<Map<String, String>> people = [
    {
      "name" : "name1",
      "region" : "dae",
    },
    {
      "name" : "name2",
      "region" : "dae2",
    },
    {
      "name" : "name3",
      "region" : "dae3",
    },
  ];

  print(people);

  // true를 리턴하면 값을 유지, false를 리턴하면 삭제, es6의 find() ???
  final wherePeople = people.where((element) => element["name"] != "name2");
  
  print(wherePeople);
}