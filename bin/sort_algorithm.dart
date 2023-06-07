import 'package:sort_algorithm/bubble_sort.dart';

void main(List<String> arguments) {
  final listToSort = [10, 5, 12, 2, 56, 42, 12, 0];

  final newList = bubbleSort(listToSort);

  print(newList);
}
