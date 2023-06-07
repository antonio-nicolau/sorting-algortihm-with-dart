import 'package:sort_algorithm/bubble_sort.dart';
import 'package:sort_algorithm/quick_sort.dart';

void main(List<String> arguments) {
  final listToSort = [60, 3, 10, 5, 70, 12, 2, 56, 42, 12, 0];

  // final newList = bubbleSort(listToSort);
  final newList = quickSort(listToSort, 0, listToSort.length - 1);

  print(newList);
}
