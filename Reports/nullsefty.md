he null safety importance is prevents errors that result from unintentional access of variables set to null

For examples 

1-Type promotion


void main() {
  int? age;
  age = null;
  print("Age is $age");
}

2-Flow analysis

int checkValue(int? someValue) {
if (someValue == null) {
	return 0;
}

return someValue.abs();
}


3-Null-aware Operators


- void main(){

  var universityname;
  universityname = universityname; ?? "Alexandria Unviersity";
  print(universityname);
 }

-void main(){
  i var wednesday;
  next ??= wednesday;
  print('next appointment: $next');

  }
}


-void main(){
  int? stringLength(String? nullableString) {
   return nullableString?.length;
  }
}


- void main(){

   makeCoffee(String coffee, [String? dairy]) {
   if (dairy != null) {
    print('$coffee with $dairy');
  } else {
    print('Black $coffee');
  }
}
}


-void main(){
  Universityname ? newUniversityname
  var universityname;
  universityname = newUniversityname;
  ?..name ='Alexandria Unviersity'
  ..num = 100000;
  
}
  class Universityname {
  String? name;
  int? num;
 }



-void main(){
   List<int> lowerNumber;
   print(lowerNumber?[1]);
}



- void main(){
    List<int> lowerNumber = [1,2,3,4,5];
    List<int> upperNumbers = [6,8,9,0];
    lowerNumber = [...lowerNumber,...?upperNumbers];
    print('numbers are ${lowerNumber}');
   
}















