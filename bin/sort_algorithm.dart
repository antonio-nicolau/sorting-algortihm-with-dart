import 'package:sort_algorithm/quick_sort.dart';
import 'package:sort_algorithm/sort_algorithm.dart' as sort_algorithm;

void main(List<String> arguments) {
  final listToSort = [10, 5, 12, 2, 56, 42, 12, 0];

  final newList = quickSort(listToSort);

  print(newList);
}
