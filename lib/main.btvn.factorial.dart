import 'dart:developer';
import 'dart:io';
import 'dart:math' hide log;

void main(List<String> args) {
  // log("Cách 1: ${factorial(6)}");
  // log("Cách 3: ${6.factorial()}");
  // log("Cách 2: ${factorialFor(6)}");

  // var arrs = [0, 1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 98, 99, 100];

  // for (var e in arrs) {
  //   log("$e: ${snt(e)}");
  // }

  // for (var e in arrs) {
  //   log("$e: ${isSnt(e)}");
  // }



  stdout.write('Mời bạn nhập số nguyên thứ nhất: ');
  int input = int.parse(stdin.readLineSync()!);
  bool isSNT = checkSNT(input);
  log("$input : $isSNT");

}

/// hàm này để tính giai thừa
///
/// input: `k`: số nguyên dương
/// 
/// return: factorial of `k`
int factorialFor(int k) {
  // validate data:
  assert(k > 0, "k > 0");

  var result = 1;
  for (var i = k; i >= 1; i--) {
    result *= i;
  }
  return result;
}

int factorial(int k) {
  if (k < 0) {
    throw Exception("input must be a number > 0");
  }
  if (k == 0) {
    return 1;
  }

  var result = k;
  k--;
  while (k > 1) {
    result *= k;
    k--;
  }
  return result;
}

extension on int {
  int factorial({int? k}) {
    log("start: $k, $this");
    k ??= this;

    if (k <= 1) return k;

    return k * factorial(k: k - 1);
  }
}

bool checkSNT(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) return false;
  }
  return true;
}