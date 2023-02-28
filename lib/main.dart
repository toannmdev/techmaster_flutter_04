import 'dart:developer';

import 'package:flutter/material.dart';

import 'main.b3.dart';

String s = "s";

/// đây cũng là 1 cách comment, có thể dùng [s] để highlight
void main() {
  String s = "Nguyễn Mạnh Toàn";

  print(s);

  log(s);

  String s1 = "1;2;3";
  log(s1.split(";").toString());

  String s11 = '''
    HÔm nay tôi đi học
    và làm bài tập
    về nhà
    xem thời sự...
    ...
  ''';
  log(s11);
  log(s1.contains("2").toString());
  log("s1 chứa ký tự 2: ${s1.contains("4").toString()}");
  log("s1: $s1");

  log("s toUppercase: ${s.toUpperCase()}");
  log("s toLowercase: ${s.toLowerCase()}");

  String ns = "0134567892";
  /*
    1 đoạn văn bản cần comment rất dài
  */

  // indexOf: trả về -1 nếu ko tìm thấy, nếu có nhiều kết quả, trả về kết quả đầu tiên
  log("indexOf: ${ns.indexOf("2")}");

  log("startWith: ${ns.startsWith("1")}");

  ns = ns.replaceAll("456789", "");
  log("ns: $ns");

  String sss = " 1 1 1 ";
  log("sss: '$sss'");
  log("sss: '${sss.trim()}'");

  // List<String> s1Splitted = s1.split(",");
  // log(s1Splitted.toString());

  String stringI = "stringI";
  int iii = 1000000000000000000;
  BigInt ii = BigInt.from(1000000000000000000 * 10000000);
  log("ii: $ii");

  double d = 10.9;
  double dd = 10.0; // lỗi....

  int a = 10;
  int b = 20;
  log("a + b: ${a + b}");

  log("double to Int: ${10.1.toInt()}");
  log("double to Int: ${d.toInt()}");
  log("int to double: ${a.toDouble()}");

  log("dd == a: ${dd == a}");
  log("dd runtimeType: ${d.runtimeType}");
  log("a runtimeType: ${a.runtimeType}");
  log("double parse int: ${a.runtimeType}");

  String sssss = "1000";
  log("int.parse(sssss): ${int.parse(sssss)}");
  log("int.parse(sssss): ${int.tryParse("abc")}");

  bool boolean = true;

  String s123 = "s123";
  bool isContains = s123.contains("123");
  log("isContains => $isContains");

  String toStringRet = s123.toString();
  log("toStringRet: $toStringRet");

  bool bA = true;
  bool bB = false;

  if (!bA) {
    log("bA truueeee");
  } else if (!bB) {
    log("___________1234567890____________");
  } else {
    log("bA falseeeeee");
  }

  if (bA && bB) {
    log("bA true, bB true");
  }

  if (bA || bB) {
    log("bA true or bB true");
  }

  List<String> strings = ["a", "b"];
  List<dynamic> dynamics = [
    "a",
    "b",
    1,
    2,
    false,
    10.9,
    [],
  ];
  List<int> ints = [1, 2, 3, 4, 5];
  log("strings: $strings");
  strings.add("c");
  log("strings after add: $strings");

  strings.addAll(["d", "e", "f"]);
  log("strings after addAll: $strings");

  strings.remove("d");
  log("strings after remove: $strings");
  log("strings after remove: ${strings.remove("z")}");

  log("subList: ${strings.sublist(3, strings.length)}");

  strings
    ..add("z")
    ..remove("z");

  log("cascade node : ${strings..add("z")}"); // khi dùng 2 dấu .. sẽ trả về đối tượng gọi phương thức đó.

  List<int> i123 = [0, 1, 2];
  List<int> bbb = i123;
  // nếu khai báo như này, bbb sẽ tham chiếu tới i123, có thể khắc phục bằng cách sử dụng .toList()

  log("i123 -> $i123, $bbb");
  i123.remove(1);
  log("i123 -> $i123, $bbb");

  log("bbb[0]: ${bbb[0]}");
  log("bbb first: ${bbb.first}");
  log("bbb last: ${bbb.last}");

  Map maps = {
    "a": "value",
    "a": "newValue",
    "b": "aa",
    "b": 0,
  };
  log("maps -> $maps");
  log("maps -> ${maps["a"]}");
  maps["b"] = "b";
  log("map['b']: ${maps['b']}");

  log("maps.keys: ${maps.keys}");
  log("maps.values: ${maps.values}");

  String newString = "bbbbb";
  newString = "ccccc";

  A().lateString = "lateString";

  A.staticString = "";

  String sssaass = "";

  sssaass.toString();

  const String constVar = "abc";
  final String finalVar = "abc";

  String nString = "";
  var variableString = "2345678";
  var variableInt = 0;
  dynamic;

  A _a = A();

  A.toStrings1234567890();
}

class A {
  late String lateString;

  static String staticString = "";

  static void toStrings1234567890(){}
}

const String abc = "abc";