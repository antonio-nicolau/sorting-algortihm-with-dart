import 'dart:math';
import 'package:sort_algorithm/bubble_sort.dart';
import 'package:sort_algorithm/insertion_sort.dart';
import 'package:sort_algorithm/merge_sort.dart';
import 'package:sort_algorithm/quick_sort.dart';
import 'package:sort_algorithm/selection_sort.dart';

void main(List<String> arguments) {
  final unsortedList = [60, 3, 10, 5, 70, 12, 2, 56, 42, 12, 0];
  // List<int> unsortedList = List<int>.generate(500, (_) => Random().nextInt(1000));

  // final newList = bubbleSort(listToSort);
  // final newList = quickSort(listToSort, 0, listToSort.length - 1);
  // final newList = mergeSort(unsortedList, 0, unsortedList.length - 1);
  // final newList = selectionSort(unsortedList);
  final newList = insertionSort(unsortedList);

  print(newList);
}
