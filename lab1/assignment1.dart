int x = 10;
int y = 20;

void main() {
  Operator();
  LogicalOperator();
  testNullAware();
}

void Operator() {
  int sum = x + y;
  print("The sum of $x and $y is $sum");
  int difference = y - x;
  print("The difference when $x is subtracted from $y is $difference");
  int product = x * y;
  print("The product of $x and $y is $product");
  if (x > y) {
    print("$x is greater than $y");
  } else if (x < y) {
    print("$y is greater than $x");
  } else if (x == y) {
    print("$x and $y are equal");
  }
}

void LogicalOperator() {
  if (x > 0 && y > 0) {
    print("$x and $y are both positive");
  }
  if (x > 0 || y < 0) {
    print("At least one of $x or $y is positive");
  }
  if (!(x < 0)) {
    print("$x is not negative");
  }
}

void testNullAware() {
  String? name = null;
  print(name ?? "Unknown");
  print(name?.length);
}
