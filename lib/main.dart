
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/custom_providers.dart';
import 'screens/screens.dart';
import 'utils/get_api_data.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}



class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}




class _MyAppState extends ConsumerState<MyApp>{

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      getUserData(ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "Outfit"
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

          // ref.read(screenHeightProvider.notifier).state = constraints.maxHeight;
          // ref.read(screenWidthProvider.notifier).state = constraints.maxWidth;

          if(ref.watch(nameProvider).isEmpty && ref.watch(locationProvider).isEmpty && ref.watch(aboutProvider).isEmpty){
            return const Scaffold(body: Center(child: CircularProgressIndicator(),),);
          }
          else{
            if(constraints.maxWidth <= 250.0){
              return const Scaffold(body: Center(child: Text("App Not Supported on this device")),);
            }
            else if(constraints.maxWidth <= ref.watch(mobileBreakPoint)){
              return const PortfolioScreenMobile();
            }
            else if(constraints.maxWidth <= ref.watch(tabletBreakPoint) && constraints.maxWidth >= ref.watch(mobileBreakPoint)){
              return const PortfolioScreenTablet();
            }
            else{
              return const PortfolioScreen();
            }
          }
        }
      )
    );
  }
}
