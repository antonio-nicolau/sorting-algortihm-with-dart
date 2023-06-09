import 'dart:math';

List<int> quickSort(List<int> values, int left, int right) {
  if (left < right) {
    final indexPivot = partition(values, left, right);
    quickSort(values, left, indexPivot - 1);
    quickSort(values, indexPivot + 1, right);
  }
  return values;
}

int partition(List<int> values, int left, int right) {
  // get a random pivot index
  final pivotRange = right - left + 1;
  final randomPivot = Random().nextDouble().toInt() * pivotRange + left;

  // change the random valor chosen with first position
  swap(values, left, randomPivot);

  int pivot = values[left];
  int i = left;

  for (int j = i + 1; j <= right; j++) {
    if (values[j] <= pivot) {
      i++;
      swap(values, i, j);
    }
  }

  swap(values, left, i);

  return i;
}

List<int> swap(List<int> values, int left, right) {
  final temp = values[left];
  values[left] = values[right];
  values[right] = temp;
  return values;
}
