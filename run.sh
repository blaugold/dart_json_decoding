#!/usr/bin/env bash

echo Compiling AOT executable
dart compile exe bin/dart_json_benchmark.dart
echo

echo Running JIT code
dart bin/dart_json_benchmark.dart
echo

echo Running AOT code
bin/dart_json_benchmark.exe
