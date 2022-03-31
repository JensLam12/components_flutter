import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
	const AlertScreen({Key? key}) : super(key: key);

	void dispplayAlertIOS(BuildContext context) {
		showCupertinoDialog(
			context: context, 
			builder: (context) {
				return CupertinoAlertDialog(
					title: const Text('Titulo'),
					content: Column(
						children: const [
							Text('Este es el contenido de la alerta'),
							SizedBox( height: 10),
							FlutterLogo( size: 100)
						]
					),
					actions: [
						TextButton(
							onPressed: () {
								Navigator.pop(context);
							}, 
							child: const Text('Cancelar', style: TextStyle( color: Colors.red) )
						),
						TextButton(
							onPressed: () {
								Navigator.pop(context);
							}, 
							child: const Text('OK')
						)
					],
				);
			}
		);
	}

	void dispplayAlertAndroid(BuildContext context) {
		showDialog(
			barrierDismissible: false,
			context: context, 
			builder: (context) {
				return AlertDialog(
					elevation: 5,
					shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
					title: const Text('Titulo'),
					content: Column(
						mainAxisSize: MainAxisSize.min,
						children: const [
							Text('Este es el contenido de la alerta'),
							SizedBox( height: 10,),
							FlutterLogo( size: 100,)
						],
					),
					actions: [
						TextButton(
							onPressed: () {
								Navigator.pop(context);
							}, 
							child: const Text('Cancelar')
						),
						TextButton(
							onPressed: () {
								Navigator.pop(context);
							}, 
							child: const Text('OK')
						)

					],
				);
			}
		);
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: ElevatedButton(
					child: const Padding(
						padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
						child: Text('Mostrar alerta', style: TextStyle( fontSize: 20 ),),	
					),
					onPressed: () => Platform.isAndroid ? dispplayAlertAndroid(context) : dispplayAlertIOS(context) ,
				),
			),
			floatingActionButton: FloatingActionButton(
				child: const Icon(Icons.close),
				onPressed: () {
					Navigator.pop(context);
				},
			),
		);
	}
}