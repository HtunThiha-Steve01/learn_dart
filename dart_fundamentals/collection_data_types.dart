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
}

void describeList(List list) {
  print('🔄️ Element count: ${list.length}');
  print('🗃️  List: ${list}\n');
}