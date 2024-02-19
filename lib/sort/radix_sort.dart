num getDigitAt(num number, num position) {
  final _numberList = number.toString().split('').reversed.toList();

  if (position > _numberList.length - 1) return 0;

  return int.parse(_numberList[position.toInt()]);
}
