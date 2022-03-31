import 'package:components_test/Theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

	const SliderScreen( {Key? key} ) : super(key: key);

  	@override
  	State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

	double _slider = 100;
	bool _sliderEnable = true;

  	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text( 'Sliders and checks'),
			),
			body: Column(
				children: [
					Slider.adaptive(
						min: 50, 
						max: 400, 
						value: _slider, 
						onChanged: _sliderEnable ? (value) {
							_slider = value;
							setState(() {});
						}: null,
						activeColor: AppTheme.primary,
					
					),
					Checkbox(
						value: _sliderEnable, 
						onChanged: (value) {
							_sliderEnable =  value ?? true;
							setState(() {});
						}
					),

					CheckboxListTile(
						title: const Text('Habilitar slider'),
						activeColor: AppTheme.primary,
						value: _sliderEnable, 
						onChanged: (value) {
							_sliderEnable =  value ?? true;
							setState(() {});
						}
					),

					Switch(
						value: _sliderEnable, 
						onChanged:  (value) {
							_sliderEnable =  value;
							setState(() {});
						}
					),
					
					SwitchListTile.adaptive(
						title: Text('Habilitat slider'),
						value: _sliderEnable, 
						onChanged:  (value) {
							_sliderEnable =  value;
							setState(() {});
						}
					),

					const AboutListTile(),
					
					Expanded(
	     				child: SingleChildScrollView(
							child: Image(
								image: NetworkImage('https://www.coimprit.com.mx/wp-content/uploads/2020/11/288175233bf251a5e6f8fecaa5e0167b.jpg'),
								fit: BoxFit.contain,
								width: _slider,
						    ),
						),
					)
					
				],
			),
		);
	}
}