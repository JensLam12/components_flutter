import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
	const CustomInputField({
		Key? key, 
		this.hintText, 
		this.labelText, 
		this.helperText, 
		this.icon, 
		this.suffixIcon, 
		this.inputType, 
		this.obscureText = false, 
		required this.formProperty, 
		required this.formValues,
	}) : super(key: key);

	final String? hintText;
	final String? labelText;
	final String? helperText;
	final IconData? icon;
	final IconData? suffixIcon;
	final TextInputType? inputType;
	final bool obscureText;
	final String formProperty;
	final Map<String, String> formValues;

	@override
	Widget build(BuildContext context) {
		return TextFormField(
			autofocus: true,
			//initialValue: 'la wea',
			textCapitalization: TextCapitalization.words,
			onChanged: (value) => formValues[formProperty] = value,
			validator: (value) {
				if(value == '') {
					return 'este campo es requerido';
				}
				int lenght = value!.length;
				return lenght < 3 ? 'Minimo 3 caracteres': null;
			},
			autovalidateMode: AutovalidateMode.onUserInteraction,
			obscureText: obscureText,
			decoration: InputDecoration(
				hintText: hintText,
				labelText: labelText,
				helperText: helperText,
				//counterText: '3 caracteres',
				suffixIcon: icon != null ? Icon(Icons.group_outlined) : null,
				//prefixIcon: Icon( Icons.verified_user_outlined),
				icon: icon != null ? Icon( icon) : null,
			),
			keyboardType: inputType != null ? inputType : null,
		);
	}
}