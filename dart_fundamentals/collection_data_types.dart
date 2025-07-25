void main() {
  runLists();
}

void runLists() {

  // Lists - equivalent of Arrays in JavaScript and ArrayLists in Java
  // Lists have generic data type annotation, although it can be optional
  List randomElementsList = [1, 'Text', 9.80665, true];
  describeList(randomElementsList);

  // List with generic data type
  List<String> fruitNames = ['Apple', 'Orange', 'Banana']; // cannot add other data types in this list
  describeList(fruitNames);

  // Create an empty list like this
  List emptyList = List.empty();
  emptyList = [];
  describeList(emptyList);

  // Disadvantages of using List without generic type
  // You cannot access class-related methods of elements in the list safely anymore
  // print(randomElementsList[1].isEven); // will cause error because element[1] is String

  List<int> integersList = [1, 2, 3, 4];
  print(integersList[1].isEven); // can use this for every element because this is integers list
  // Unless for any special reason, it is always optimal to use generic-typed Collection objects
}

void describeList(List list) {
  print('🔄️ Element count: ${list.length}');
  print('🗃️  List: ${list}\n');
}