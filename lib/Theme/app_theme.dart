import 'package:flutter/material.dart';

class AppTheme {
	static const Color primary = Colors.indigo;

	static final ThemeData lightTheme = ThemeData.light().copyWith(
		//color primario
		primaryColor: primary,
		appBarTheme: const AppBarTheme( 
			backgroundColor: primary, 
			elevation: 0 
		),
		textButtonTheme: TextButtonThemeData(
			style: TextButton.styleFrom( primary: primary)
		)
	);

	static final ThemeData darkTheme = ThemeData.dark().copyWith(
		//color primario
		primaryColor: primary,
		appBarTheme: const AppBarTheme( 
			backgroundColor: primary, 
			elevation: 0 
		),
		scaffoldBackgroundColor: Colors.black
	);
}