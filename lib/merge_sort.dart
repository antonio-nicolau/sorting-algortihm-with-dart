List<int> mergeSort(List<int> list, int left, int right) {
  if (left >= right) {
    return list;
  } else {
    int middle = (left + right) ~/ 2;
    mergeSort(list, left, middle);
    mergeSort(list, middle + 1, right);

    merge(list, left, middle, right);
  }

  return list;
}

void merge(List<int> list, int left, int middle, int right) {
  final helper = List.generate(list.length, (index) => list[index]);

  int i = left;
  int j = middle + 1;
  int k = left;

  while (i <= middle && j <= right) {
    if (helper[i] <= helper[j]) {
      list[k] = helper[i];
      i++;
    } else {
      list[k] = helper[j];
      j++;
    }
    k++;
  }

  // if did not consume initial part, append
  while (i <= middle) {
    list[k] = helper[i];
    i++;
    k++;
  }

  // if did not consume last part, append
  while (j <= right) {
    list[k] = helper[j];
    j++;
    k++;
  }
}
