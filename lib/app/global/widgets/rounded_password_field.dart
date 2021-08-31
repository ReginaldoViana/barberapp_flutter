import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'text_field_container.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final controller;
  bool showPassword;
  VoidCallback changeShowPassword;
  RoundedPasswordField({
    Key? key,
    this.controller,
    required this.onChanged,
    this.showPassword = false,
    required this.changeShowPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return 'Campo requerido.';
          }
          if(value.length <= 4){
            return 'Campo requer mínimo 5 caracteres.';
          }
          return null;
        },
        controller: controller,
        obscureText: !showPassword,
        onChanged: onChanged,
        cursorColor: Get.theme.primaryColor,
        decoration: InputDecoration(
          hintText: "Senha",
          icon: Icon(
            Icons.lock,
            color: Get.theme.primaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: Get.theme.primaryColor,
            ),
            onPressed: changeShowPassword,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
