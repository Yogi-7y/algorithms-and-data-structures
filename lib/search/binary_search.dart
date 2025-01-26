/// Binary search is generally a faster search algorithm than linear search.\
/// Rather than traversing all the elements one by one, binary search divides \
/// the array into two halves and checks the middle element. If the middle \
/// element is the search term, it returns true. If the middle element is \
/// greater than the search term, it searches the left half of the array. \
/// If the middle element is less than the search term, it searches the right \
/// half of the array. It continues this process until it finds the search term \
/// or the start and end pointers meet each other.
///
/// Time complexity: Worst case O(log n), Best case O(1)
bool binarySearch(List<int> array, int search) {
  var start = 0;
  var end = array.length - 1;
  var middle = ((start + end) / 2).floor();

  while (start <= end) {
    final middleValue = array[middle];

    if (middleValue == search) return true;

    if (middleValue > search) {
      end = middle - 1;
      middle = ((start + end) / 2).floor();
    }

    if (middleValue < search) {
      start = middle + 1;
      middle = ((start + end) / 2).floor();
    }
  }

  return false;
}
