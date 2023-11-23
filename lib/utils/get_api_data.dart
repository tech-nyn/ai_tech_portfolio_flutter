

 import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/custom_providers.dart';

Future<void> getUserData(WidgetRef ref) async{
    final dio = Dio();
    final getUser = await dio.get(ref.watch(userUrlProvider));
    if(getUser.statusCode.toString().startsWith("2")){
      ref.read(nameProvider.notifier).state = getUser.data[0]["name"];
      ref.read(locationProvider.notifier).state = getUser.data[0]["address"]["city"];
    }
    else{
      ref.read(succesProvider.notifier).state = false;
    }

    final getPost = await dio.get(ref.watch(postUrlProvider));
    if(getPost.statusCode.toString().startsWith("2")){
      ref.read(aboutProvider.notifier).state = getPost.data[0]["body"];
    }
    else{
      ref.read(succesProvider.notifier).state = false;
    }
  }