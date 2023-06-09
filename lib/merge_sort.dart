List<int> mergeSort(List<int> values, int left, int right) {
  if (left >= right) {
    return values;
  } else {
    int middle = (left + right) ~/ 2;

    // Sort first and second halves
    mergeSort(values, left, middle);
    mergeSort(values, middle + 1, right);

    merge(values, left, middle, right);
  }

  return values;
}

void merge(List<int> values, int left, int middle, int right) {
  // create a temporary Array with elements of [values]
  final tempArray = List.generate(values.length, (index) => values[index]);

  int i = left;
  int j = middle + 1;
  int k = left;

  while (i <= middle && j <= right) {
    if (tempArray[i] <= tempArray[j]) {
      values[k] = tempArray[i];
      i++;
    } else {
      values[k] = tempArray[j];
      j++;
    }
    k++;
  }

  // if did not consume initial part, append
  while (i <= middle) {
    values[k] = tempArray[i];
    i++;
    k++;
  }

  // if did not consume last part, append
  while (j <= right) {
    values[k] = tempArray[j];
    j++;
    k++;
  }
}
