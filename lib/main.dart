import 'package:flutter/material.dart';
import 'package:components_test/Theme/app_theme.dart';
import 'package:components_test/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Material App',
			//home: const ListView2Screen(),
     		initialRoute: AppRoutes.initialRoute,
			routes: AppRoutes.getAppRoutes(),
			onGenerateRoute: AppRoutes.onGenerateRoute,
			theme: AppTheme.lightTheme,
		);
	}
}