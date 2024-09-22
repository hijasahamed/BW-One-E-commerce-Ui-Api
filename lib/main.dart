import 'package:bw_week_one_e_commerce/view/home_screen/bottom_nav_bar/bloc/bottom_navigation_bloc.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [        
        BlocProvider(create: (context) => BottomNavigationBloc(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,      
        home: HomeScreen(screenSize: screenSize,),
      ),
    );
  }
}
