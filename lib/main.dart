import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property/core/constants/global.dart';
import 'package:property/presentation/application/property/bloc/property_bloc.dart';
import 'package:property/presentation/screens/property_list_screen.dart';

void main() async {
  await appConfig.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<PropertyBloc>())],
      child: MaterialApp(
        title: 'Property Details',
        theme: ThemeData(useMaterial3: true),
        home: const PropertyListScreen(),
      ),
    );
  }
}
