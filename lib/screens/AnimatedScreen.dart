import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

	const AnimatedScreen( {Key? key} ) : super(key: key);

  	@override
  	State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

	double _width =50;
	double _height = 50;
	Color _color = Colors.indigo;
	BorderRadiusGeometry borderRadius = BorderRadius.circular(10);

	void changeShape() {
		final random = Random();
		_width = random.nextInt(100).toDouble()+50;
		_height = random.nextInt(100).toDouble()+50;
		_color = Color.fromRGBO(
			random.nextInt(255), 
			random.nextInt(255),
			random.nextInt(255),
			1
		);
		borderRadius = BorderRadius.circular(random.nextInt(100).toDouble()+10);
		setState(() {});
	}

  	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Animated screen'),
			),
			body: Center(
				child: AnimatedContainer(
					width: _width,
					height: _height,
					decoration: BoxDecoration(
						color: _color,
						borderRadius: borderRadius
					),
					duration: const Duration(milliseconds: 500),
					curve: Curves.easeOutQuart,
				)
			),
			floatingActionButton: FloatingActionButton(
				child: const Icon( Icons.play_circle_fill_outlined, size: 35),
				onPressed: () {
					changeShape();
				},
			),
		);
	}
}