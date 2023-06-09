void swap(List<int> values, int left, int right) {
  int temp = values[left];
  values[left] = values[right];
  values[right] = temp;
}

List<int> selectionSort(List<int> values) {
  for (int i = 0; i < values.length; i++) {
    int minIndex = i;

    // Find the minimum element in unsorted array
    for (int j = i + 1; j < values.length; j++) {
      if (values[j] < values[minIndex]) {
        minIndex = j;
      }
    }

    // Swap the found minimum element with the first element
    swap(values, i, minIndex);
  }
  return values;
}
