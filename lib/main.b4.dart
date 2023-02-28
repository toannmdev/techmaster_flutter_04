import 'dart:developer';
import 'dart:io';
import 'dart:math' hide log;

void main(List<String> args) {
  // int a = 10;
  // a = a + 1;  // cách viết rút gọn: a++;

  // log("a + 1-> $a");
  // a = a - 1; // cách viết rút gọn: a--;
  // log("a - 1 -> $a");
  // a = a * 2; // cách viết rút gọn: a *= 2
  // log("a * 2 -> $a");
  // a = (a / 2).toInt();
  // log("a / 2 -> $a");

  // const c = 11;
  // var aa = c ~/ 3; // chia lấy phần nguyên
  // log("$c ~/ 3 -> $aa");

  // var bb = c % 3; // chia lấy phần dư
  // log("$c % 3 -> $bb");

  // var d = 10;
  // var e = ++d;  // gán giá trị, trả về kết quả cho biểu thức phía trước
  // log("e -> $e");
  // log("d -> $d");
  // var f = d++; // chỉ + giá trị của d, không trả về kết quả phía trước dấu =
  // log("d++ -> $d, $e, $f");

  // var x = sqrt(9); log("x -> $x"); // căn bậc 2

  // /// toán tử so sánh
  // bool is10 = 10 == 10;
  // bool isNot10 = 10 != 10;
  // bool isGreater10 = 10 >= 10;
  // bool isLesser10 = 10 <= 10;

  // bool b1 = true; bool b2 = false;
  // if(b1 && b2) { log("b1 true and b2 true"); }
  // if(b1 || b2) { log("b1 true or b2 true"); }
  // if(!b2) { log("!b2"); } // cách viết rõ nghĩa: b2 == false
  // bool? bNullable;
  // if(bNullable == true) {}
  // if(bNullable) {} // NÊN TRÁNH: sẽ báo lỗi "A nullable expression can't be used as a condition."

  // for loop
  // for (int i = 0; i < 10; i++) { // áp dụng cho các điều kiện có sẵn, biết điều kiện để dừng
  //   log("i -> $i");
  //   if (i == 5){
  //     break;
  //   }
  //   for (int j = 10; j >= 0; j--) {
  //     log("_____j -> $j");
  //     if (j == 8){
  //       return;
  //     }
  //   }
  // }
  // /*
  //  trường hợp for lồng:
  //   - return sẽ return giá trị, và kết thúc toàn bộ vòng for
  //   - break sẽ chỉ kết thúc vòng for hiện tại
  // */

  // var maps = {"k": "1"};
  // maps.forEach((key, value) { log("key: $key, value: $value"); }); // foreach thường dùng để duyệt toàn bộ phần tử trong mảng
  // for (var e in maps.keys) {
  //   log("e -> $e");
  // }

  // for (int i = 0; i < 10; i++) {
  //   // bỏ qua 1 vài phần tử....
  //   if (i == 5 || i == 6 || i == 7 || i == 8) {
  //     continue;
  //   }
  //   // kết hợp continue + break
  //   if (i == 9) {
  //      break;
  //   }
  //   log("i -> $i");
  // }

  void check({dynamic d}) {
    if (d == null) {
      throw Exception("Nulllll");
    }
    // nếu d == null, sẽ break khỏi function check(), hàm log sẽ ko được chạy
    log("d: $d");
  }

  try {
    check(d: null);
    int c = 10;
    log("c -> $c");
  } on SocketException {
    log("_____on SocketException");
  } on FormatException {
    log("on FormatException");
  } catch (e, s) {
    /*
      e là error
      s là Stacktrace: để trace tới file > line > function gây ra lỗi
    */
    log("________parse error: $e, $s");
  } // try-catch để tránh lỗi gây crash app, nhưng đừng bọc try-catch ở hàm main luôn nhé, hạn chế thôi.
  finally {
    log("end try-catch"); // lúc nào cũng chạy vào, bất kể có exception hay ko
  }

  int factorialFor(int k) {
    var result = k;

    for (var i = k; i >= 1; i--) {
      result *= i;
    }

    return result;
  }

  log("factorialFor(-1) -> ${factorialFor(-1)}");
}
