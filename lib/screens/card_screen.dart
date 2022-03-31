import 'package:flutter/material.dart';
import 'package:components_test/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
	const CardScreen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Card Widget'),
			),
			body: ListView(
				padding: const EdgeInsets.symmetric( horizontal: 20.0, vertical: 10.0) ,
				children: const [
					CustomCardTypeOne(),
					SizedBox( height: 10 ),
					CustomCardTypeTwo( imageUrl: 'https://wallpapercave.com/wp/wp2434305.jpg', name: 'Un hermoso paisaje',),
					SizedBox( height: 10 ),
					CustomCardTypeTwo( imageUrl: 'https://preview.redd.it/aqn9264yge121.jpg?auto=webp&s=ce9c987e51e80da7eeb8ef1e8015ffcef7b1ba6e', name: 'Fire attack',),
					SizedBox( height: 10 ),
					CustomCardTypeTwo( imageUrl: 'https://pbs.twimg.com/media/EORqXbjWAAMaLx1?format=jpg&name=large',),
					SizedBox( height: 10 ),
					CustomCardTypeTwo( imageUrl: 'https://wallpaperaccess.com/full/5674092.jpg',),
				],
			),
		);
	}
}




