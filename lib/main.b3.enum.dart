import 'dart:developer';

void private() {}

enum DayOfWeeks {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

extension DayOfWeeksExt on DayOfWeeks {
  String getName() {
    // if (this == DayOfWeeks.Monday) {
    //   return "Thứ 2";
    // } else if (this == DayOfWeeks.Tuesday) {
    //   return "Thứ 3";
    // } else {
    //   return "Unknow";
    // }
    switch (this) {
      case DayOfWeeks.Monday:
      case DayOfWeeks.Tuesday:
      case DayOfWeeks.Wednesday:
      case DayOfWeeks.Thursday:
      case DayOfWeeks.Friday:
        return "abc";
      default:
        return "";
    }
  }
}

void main(List<String> args) {
  List<DayOfWeeks> dayOfWeeks = DayOfWeeks.values;
  for (var element in dayOfWeeks) {
    print("day is: ${element.getName()}");
  } // các ngày từ thứ 2 -> chủ nhật

  log("Monday: ${DayOfWeeks.Monday.getName()}");

  dynamic d = 10;
  d = "10";
  d = 10.8;
  d = true;
  d = {"k": "v"};
  d = [1, 2, 3];

  log("d : $d");

  var v = 10;

  void test(var a) {
    log("a -> $a");
  }

  test(v);

  // String s = null;

  String s = "sssssssssss";
  s.test();

  String? s11 = null;
  // s11?.test();
  s11?.test();

  // testStr(s11);

  // testStr(s11 ?? "asff");

  String? ss = null;
  // ss ??= "ss";
  log("ss: $ss");

  testStr(ss ?? "default");

  private();
}

extension on String {
  void test() {
    log("value is $this");
  }
}

void testStr(String s) {
  log("testStr: s : $s");
}
