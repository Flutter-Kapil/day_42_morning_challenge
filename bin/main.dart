// Write a function that takes an array of unordered integers and logs percentile
// values at 25%, 50%, 75%, 90%, 95%, 99% and 100%

// For example, given the list [8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2] it should log the following:
//  25% of the numbers are less than or equal to 3
//  50% of the numbers are less than or equal to 8
//  75% of the numbers are less than or equal to 16
//  90% of the numbers are less than or equal to 20
//  95% of the numbers are less than or equal to 22
//  99% of the numbers are less than or equal to 22
//  100% of the numbers are less than or equal to 22
List<int> percentile(List<int> numbers) {
  numbers.sort();
  List<int> percentage = [25,50,75,90,95,99,100];
  int lengthOfList = numbers.length;
  List<int> testList = [];
  percentage.forEach((percent) {
    int number = numbers[getPercentagePosition(lengthOfList, percent)];
    print('$percent% of the numbers less than or equal to $number');
    testList.add(number);
  });
  return testList;
}

int getPercentagePosition(int length, int percentage) {
  int x = ((percentage / 100) * length).ceil();
    return x-1;
}

main() {
print(getPercentagePosition(90, 12));
print(getPercentagePosition(5, 75));
print(getPercentagePosition(5,25));
print(getPercentagePosition(13,75));
}
