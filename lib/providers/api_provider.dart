

import 'package:flutter_riverpod/flutter_riverpod.dart';

final userUrlProvider = Provider<String>((ref) => "https://jsonplaceholder.typicode.com/users");
final postUrlProvider = Provider<String>((ref) => "https://jsonplaceholder.typicode.com/posts");

final nameProvider = StateProvider<String>((ref) => "");
final locationProvider = StateProvider<String>((ref) => "");
final aboutProvider = StateProvider<String>((ref) => "");
final succesProvider = StateProvider<bool?>((ref) => null);