import 'dart:developer';

import 'main.b3.enum.dart';

void main(List<String> args) async {
  void test(String title) {
    log(title);
    ///safasfasfasf
  }

  private();

  test("TITLE");
  test.call(".....");

  String getTitle() {
    return "getTitle()....";
  }

  log(getTitle());
  String _getTitle = getTitle();
  log(_getTitle);

  void functionCall(Function function) {
    function.call();
    log("functionCall");
  }

  functionCall(() => test.call(
      "TESTTTTTTTTT aghsfvajshfhjas7615263t7612t36812t376123t12673t17623t1267t37126t3"));
  functionCall(() {
    test.call("TESTTTTTTTTT");
  }); // cách viết dòng 23-25 y như dòng 22

  void functionCallNew(Function(String) function, double d) {
    function.call("______________TEST");
    log("______________functionCallNew");
  }

  functionCallNew(test, 0);

  void functionCallNewNew(
      double Function(String, String, String) function, double d) {
    function.call("______________TEST", "", "");
    log("______________functionCallNew");
  }

  double stringToDouble(String input, String input1, String input2) {
    return double.tryParse(input) ?? 0;
  }

  functionCallNewNew(stringToDouble, 0);

  Future waitFor3s() async {
    return await Future.delayed(const Duration(seconds: 3));
  }

  await waitFor3s();

  log("after waitFor3s");

  // optional params
  funcWithOptional(0.7);

  funcWithOptional(10.8, name1213: "Test", id: "20");

  funcWithPositional("z");

  funcWithPositional("1", "3");

  String s = "abc";
  s = s.test();
  log("s: $s");

  // -------
  int value = 0;
  void testValue(int valueInFunction) {
    valueInFunction = 10; // chỉ thay đổi biến value, trong scope function test
    print("trong function test value -> $valueInFunction");
  }

  testValue(value);
  print("ngoài fuction test value -> $value"); // kết quả value = 0
}

void funcWithOptional(double d, {String id = "10", String name1213 = "name", double? dd = 10}) {
  log("id -> $id");
  log("d -> $d $id");
}

void funcWithPositional(String z, [String a = "a", String b = "b", c = "c"]) {
  log("a -> $a, b -> $b, c -> $c");
}

void funcWithPositionalaaa({List? list}) {
  list ??= ["a", "b", "c"];
}

extension on String {
  String test() {
    return "test";
  }
}