void main(){
 List<Map<String,String>> people = [
   {
     "name" : "주원1",
     "age" : "1",
   },
   {
     "name" : "주원2",
     "age" : "2",
   },
   {
     "name" : "주원3",
     "age" : "3",
   },
 ];
 
 print(people);
 
 final parsedPeople = people.map(
         (e) => Person(name: e["name"]!, age: int.parse(e["age"]!))).toList();

 // (e) => Person(name: e["name"]!, age: int.parse(e["age"]!)))
// .where((element) => element.age == 2).toList()
// .fold<int>(0, (prev, next)=> perv + next);
// 메소드 체이닝이 가능하다.

 print(parsedPeople);

 for(Person person in parsedPeople){
   print("이름은 ${person.name} 나이는 ${person.age}");
 }

 final age2 = parsedPeople.where((element) => element.age == 2).toList();

 for(Person person in age2){
   print("이름은 ${person.name} 나이는 ${person.age}");
 }

}

class Person{
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age
  });

}