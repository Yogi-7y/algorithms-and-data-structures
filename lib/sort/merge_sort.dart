import '../types.dart';

Numbers merge(Numbers arrayOne, Numbers arrayTwo) {
  final _result = <int>[];

  var arrayOneCounter = 0;
  var arrayTwoCounter = 0;

  while (arrayOneCounter != arrayOne.length && arrayTwoCounter != arrayTwo.length) {
    if (arrayOne[arrayOneCounter] < arrayTwo[arrayTwoCounter]) {
      _result.add(arrayOne[arrayOneCounter]);
      arrayOneCounter++;
    } else {
      _result.add(arrayTwo[arrayTwoCounter]);
      arrayTwoCounter++;
    }
  }
  for (var i = arrayOneCounter; i < arrayOne.length; i++) {
    _result.add(arrayOne[i]);
  }

  for (var i = arrayTwoCounter; i < arrayTwo.length; i++) {
    _result.add(arrayTwo[i]);
  }

  return _result;
}

Numbers mergeSort(Numbers array) {
  if (array.length <= 1) return array;

  final _mid = (array.length / 2).floor();
  final _left = mergeSort(array.sublist(0, _mid));
  final _right = mergeSort(array.sublist(_mid, array.length));

  return merge(_left, _right);
}
