////import core libraries
import 'dart:math';
////import libraries from external packages
//import 'package:test/test.dart'
////import files
//import ''

main(){
  print('Hello World!!');
  print('HELLO DUDE!!!');
  print(name);

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
  //Control Flow Statement
if (year >= 2001) {
  print('21st century');
} else if (year >= 1901){
  print('20th century');
}
for (var object in flybyObjects) {
  print(object);
}
print('bam');
for (int month = 1; month <= 2; month++) {
  print(month);
}
while (year < 2016) {
  year += 1;
  //print(year);
}
//Function
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
var result = fibonacci(20);
print('${result.toString()} $name');

int astronauts = 1;
//EXCEPTIONS
//Use Throw
if (astronauts == 0) {
  throw StateError('No astronauts.');
}


//try {
//  for (var object in flybyObjects) {
//    var description = await File('$object.txt').readAsString();
//    print(description);
//  }
//} on IOException catch (e) {
//  print('Could not describe object: $e');
//} finally {
//  flybyObjects.clear();
//}
}

//Variables
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter','Saturn','Uranus','neptune'];
var image = {
  'tags' : ['saturn'],
  'url' : '//path/to/saturn.jpg'
};

//Class
class Spacecraft {
  String name;
  DateTime launchDate;

  //Constructor with syntactic sugar for assigment to members
  Spacecraft(this.name, this.launchDate){

  }
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launcYear =>
    launchDate?.year; //read-only non-final property

  //Method
  void describe(){
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched : ($years years ago)');
    }else{
      print('Unlaunched');
    }  
  }
}
//INHARITANCE
//orbiter anak spacecraft
  class Orbiter extends Spacecraft {
   num altitude;
   Orbiter(String name, DateTime launchDate, this.altitude)
   : super(name, launchDate);
  }

//MIXIN
class Piloted {
  int astronauts = 1;
  void describeCrew(){
    print('Number of astronauts : $astronauts');
  }
}



//ASYNC
const oneSecond = Duration(seconds: 1);
//- - -
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}


