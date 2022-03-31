import 'package:flutter/material.dart';
import 'package:components_test/Models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
	static const initialRoute = 'home';
	static final menuOptions = <MenuOption> [
		//TODO:  BORRAR HOME
		MenuOption( route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp),
		MenuOption( route: 'listview1', name: 'List View 1 Screen', screen: const ListView1Screen(), icon: Icons.list_alt),
		MenuOption( route: 'listview2', name: 'List View 2 Screen', screen: const ListView2Screen(), icon: Icons.list_sharp),
		MenuOption( route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
		MenuOption( route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.card_giftcard_outlined),
	];

	static Map<String, Widget Function(BuildContext)> getAppRoutes() { 

		Map<String, Widget Function(BuildContext)> appRoutes = {};
		
		for( final option in menuOptions) {
			appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
		}
		
		return appRoutes;
	}

	// static Map<String, Widget Function(BuildContext)> routes = {
	// 	'home'		: (BuildContext context) => const HomeScreen(),
	// 	'listview1'	: (BuildContext context) => const ListView1Screen(),
	// 	'listview2'	: (BuildContext context) => const ListView2Screen(),
	// 	'alert'		: (BuildContext context) => const AlertScreen(),
	// 	'card'		: (BuildContext context) => const CardScreen(),
	// };

	static Route<dynamic> onGenerateRoute (RouteSettings settings) {
		return MaterialPageRoute(builder: (context) => const AlertScreen()); 
	}
}