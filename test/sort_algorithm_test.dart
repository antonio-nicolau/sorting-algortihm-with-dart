import 'dart:math';

import 'package:sort_algorithm/bubble_sort.dart';
import 'package:sort_algorithm/insertion_sort.dart';
import 'package:sort_algorithm/merge_sort.dart';
import 'package:sort_algorithm/quick_sort.dart';
import 'package:sort_algorithm/selection_sort.dart';
import 'package:test/test.dart';

void main() {
  final unsortedList = [60, 3, 10, 5, 70, 12, 2, 56, 42, 12, 0];
  final sortedList = [0, 2, 3, 5, 10, 12, 12, 42, 56, 60, 70];
  test('should sort list with Quick Sort', () {
    final newList = quickSort(unsortedList, 0, unsortedList.length - 1);
    expect(newList, sortedList);
    expect(newList, isList);
    expect(newList.length, equals(11));
  });

  test('should sort list with Bubble Sort', () {
    final newList = bubbleSort(unsortedList);
    expect(newList, sortedList);
    expect(newList, isList);
    expect(newList.length, equals(11));
  });

  test('should sort list with Merge Sort', () {
    final newList = mergeSort(unsortedList, 0, unsortedList.length - 1);
    expect(newList, sortedList);
    expect(newList, isList);
    expect(newList.length, equals(11));
  });

  test('should sort list with Insertion Sort', () {
    final newList = insertionSort(unsortedList);
    expect(newList, sortedList);
    expect(newList, isList);
    expect(newList.length, equals(11));
  });

  test('should sort list with Selection Sort', () {
    final newList = selectionSort(unsortedList);
    expect(newList, sortedList);
    expect(newList, isList);
    expect(newList.length, equals(11));
  });
}
