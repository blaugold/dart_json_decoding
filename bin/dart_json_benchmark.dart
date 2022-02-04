import 'dart:convert';

import 'package:benchmark_harness/benchmark_harness.dart';

import 'large_json_doc.dart';
import 'small_json_doc.dart';

void main(List<String> arguments) {
  final benchmarks = [
    SmallDocument(),
    LargeDocument(),
  ];

  for (final benchmark in benchmarks) {
    benchmark.report();
  }
}

class LargeDocument extends BenchmarkBase {
  LargeDocument() : super('Large document');

  @override
  void run() {
    jsonDecode(largeJsonDoc);
  }
}

class SmallDocument extends BenchmarkBase {
  SmallDocument() : super('Small document');

  @override
  void run() {
    jsonDecode(smallJsonDoc);
  }
}
