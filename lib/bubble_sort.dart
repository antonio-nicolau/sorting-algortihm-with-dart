void swap(List<int> values, int left, int right) {
  final temp = values[left];
  values[left] = values[right];
  values[right] = temp;
}

List<int> bubbleSort(List<int> values) {
  // Optimize the algorithm by stopping the algorithm
  // if the inner loop didn’t cause any swap.
  bool swapped = false;

  for (var i = 0; i < values.length; i++) {
    swapped = false;

    for (var j = i + 1; j < values.length; j++) {
      if (values[i] > values[j]) {
        swap(values, i, j);
        swapped = true;
      }
    }

    // If no two elements were swapped by inner loop, then break
    if (!swapped) break;
  }

  return values;
}
