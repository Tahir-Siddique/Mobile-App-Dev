void main(List<String> args) {
  var list = ["A", "B", "C", "D", "E", "F"];
  print("################## For Loop ###########################");
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print("################## For In/Each Loop ###########################");
  for (var obj in list) {
    print(obj);
  }

  print("################# While Loop ############################");
  int i = 0;

  while (i < list.length) {
    print(list[i]);
    i++;
  }
}
