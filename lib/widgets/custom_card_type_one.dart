import 'package:flutter/material.dart';
import 'package:components_test/Theme/app_theme.dart';

class CustomCardTypeOne extends StatelessWidget {
	const CustomCardTypeOne({
		Key? key,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Card(
			child: Column(
				children: [
					const ListTile(
						leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary ,),
						title: Text('Soy el mapa'),
						subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean consectetur enim pulvinar, laoreet quam ut, ultrices orci. Aliquam metus justo, maximus sed pharetra eu, efficitur id lorem. '),
					),
					Padding(
					  padding: const EdgeInsets.only(right: 8.0),
					  child: Row(
					  	mainAxisAlignment: MainAxisAlignment.end,
					  	children: [
					  		TextButton(
					  			onPressed: () {}, 
					  			child: const Text('Cancel')
					  		),
					  		TextButton(
					  			onPressed: () {}, 
					  			child: const Text('OK')
					  		)
					  	],
					  ),
					)
				],
			),
		);
	}
}