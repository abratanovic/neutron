import 'dart:ffi';
import 'dart:io';

final _lib = Platform.isLinux ? DynamicLibrary.open('libmylib.so') : throw UnsupportedError('Only Linux is supported');

typedef CppAddFunc = Int32 Function(Int32, Int32); // C++ side
typedef DartAddFunc = int Function(int, int); // Dart side

final DartAddFunc add = _lib.lookupFunction<CppAddFunc, DartAddFunc>('add');
final DartAddFunc multiply = _lib.lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>('multiply');
