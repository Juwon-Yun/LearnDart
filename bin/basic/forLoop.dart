void main(){
  for(int i = 0; i < 3; i++){
    print(i);
  }

  Map<int, String> tempMap = {
    0 : "1",
    1 : "2",
    2 : "3",
    3 : "4",
    4 : "5",
    5 : "6",
  };

  for(int i in tempMap.keys){
    print("keys : " + i.toString());
  }

  for(String str in tempMap.values){
    print("values : " + str);
  }

  int total = 0;

  while( total  < 10){
    total += 1;
  }
  print(total);

  total = 0;
  do{
    total += 1;
  }while( total < 10);

  print(total);

}