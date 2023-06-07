List<int> quickSort(List<int> list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = i + 1; j < list.length; j++) {
      if (list[i] > list[j]) {
        final pivot = list[i];
        list[i] = list[j];
        list[j] = pivot;
      }
    }
  }

  return list;
}
