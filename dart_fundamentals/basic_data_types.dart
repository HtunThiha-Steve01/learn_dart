void main() {
  runBasicDataTypes();
}

void runBasicDataTypes() {

  // Dart is a type-safe language. Every variable has a type, and is an object.

  // Basic data types - int, String, double, boolean
  int integer1 = 10;
  String saySomething = 'Hi I am a human';
  bool isOneEven = false;
  double price = 19.90;

  // note the value and runtime for each variable
  describeVariable(integer1, "integer1");
  describeVariable(saySomething, "saySomething");
  describeVariable(isOneEven, "isOneEven");
  describeVariable(price, "price");

  // What is null-safety?
  // A variable cannot be null unless denoted with ?
  // int x = null; will throw error
  int? x = null; // x might be null, but using ? limits certain features

  // Now x cannot be added to 1 anymore, because x is denoted as "can be null"
  // In x + 1 context, x must be int, not int?
  // print(x + 1);

  // check null value at run time
  describeVariable(x, "x");

  // use var for type-inference from right side of the expression
  var a = 1; // a is now int
  // a = 'text'; // this will cause error
  describeVariable(a, "a");

  // use dynamic for dynamic type
  // Note: dynamic is nullable without ? notation
  dynamic b = 90; // initially assigned as int
  describeVariable(b, "b");
  b = 'Greeting!'; // can be re-assigned to String
  describeVariable(b, "b");
  b = null; // re-assigned to null
  describeVariable(b, "b");

}

// accepts a variable argument and prints its value and runtime type
void describeVariable(Object? variable, String name) {
  print('📝 $name : $variable');
  print('⚙️  Runtime type: ${variable.runtimeType}\n');
}