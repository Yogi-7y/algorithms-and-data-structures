num getDigitAt(num number, num position) {
  final numberList = number.toString().split('').reversed.toList();

  if (position > numberList.length - 1) return 0;

  return int.parse(numberList[position.toInt()]);
}
