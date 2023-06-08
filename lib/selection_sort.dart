List<int> selectionSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    int indexMinValue = i;

    for (int j = i + 1; j < list.length; j++) {
      if (list[j] < list[indexMinValue]) {
        indexMinValue = j;
      }
    }
    int aux = list[i];
    list[i] = list[indexMinValue];
    list[indexMinValue] = aux;
  }
  return list;
}
