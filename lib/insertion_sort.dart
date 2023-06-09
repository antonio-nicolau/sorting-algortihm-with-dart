List<int> insertionSort(List<int> values) {
  for (int i = 1; i < values.length; i++) {
    int j = i;

    while (j > 0 && values[j] < values[j - 1]) {
      int aux = values[j];
      values[j] = values[j - 1];
      values[j - 1] = aux;
      j--;
    }
  }
  return values;
}
