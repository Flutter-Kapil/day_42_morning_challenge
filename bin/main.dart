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
  print(numbers);
  int lengthOfList = numbers.length;
  print(
      '25% of the numbers are less than or equal to ${numbers[getPercentagePosition(lengthOfList, 25)]}');
  print(
      '50% of the numbers are less thanequal to ${numbers[getPercentagePosition(lengthOfList, 50)]}');
  print(
      '75% of the numbers are less than equal to ${numbers[getPercentagePosition(lengthOfList, 75)]}');
  print(
      '90% of the numbers are less than equal to ${numbers[getPercentagePosition(lengthOfList, 90)]}');
  print(
      '95% of the numbers are less than equal to ${numbers[getPercentagePosition(lengthOfList, 95)]}');
  print(
      '99% of the numbers are less than equal to ${numbers[getPercentagePosition(lengthOfList, 99)]}');
  print(
      '100% of the numbers are less than equal to ${numbers[getPercentagePosition(lengthOfList, 100)]}');
  List<int> testList = [
    numbers[getPercentagePosition(lengthOfList, 25)],
    numbers[getPercentagePosition(lengthOfList, 50)],
    numbers[getPercentagePosition(lengthOfList, 75)],
    numbers[getPercentagePosition(lengthOfList, 90)],
    numbers[getPercentagePosition(lengthOfList, 95)],
    numbers[getPercentagePosition(lengthOfList, 99)],
    numbers[getPercentagePosition(lengthOfList, 100)]
  ];
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
