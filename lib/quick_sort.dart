import 'dart:math';

List<int> quickSort(List<int> list, int left, int right) {
  if (left < right) {
    final indexPivot = partition(list, left, right);
    quickSort(list, left, indexPivot - 1);
    quickSort(list, indexPivot + 1, right);
  }
  return list;
}

int partition(List<int> list, int left, int right) {
  final pivotRange = right - left + 1;
  final randomPivot = Random().nextDouble().toInt() * pivotRange + left;

  // change the random valor chosen with first position
  swap(list, left, randomPivot);

  int pivot = list[left];
  int i = left;

  for (int j = i + 1; j <= right; j++) {
    if (list[j] <= pivot) {
      i++;
      swap(list, i, j);
    }
  }

  swap(list, left, i);

  return i;
}

List<int> swap(List<int> list, int left, right) {
  final temp = list[left];
  list[left] = list[right];
  list[right] = temp;
  return list;
}
