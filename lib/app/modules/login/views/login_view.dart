
import 'package:cashedu/app/global/widgets/rounded_button.dart';
import 'package:cashedu/app/global/widgets/rounded_input_field.dart';
import 'package:cashedu/app/global/widgets/rounded_password_field.dart';
import 'package:cashedu/app/modules/login/controllers/login.controller.dart';
import 'package:cashedu/app/modules/login/views/components/contrained_center.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedCenter(constrainedCenterChildren : [
        Container(
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text(
                  'CASH EDU',
                  style: TextStyle(
                    fontSize: 60,
                    color: Color(0xFFC99B02)
                  ),
                ),
                SizedBox(height: 60,),
                Text(
                  'Faça login para continuar',
                  style: TextStyle(
                      fontSize: 18,
                    color: Color(0xFF6F8EB3),
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Form(
                  key: controller.formKey,
                  child: Column(
                  children: [


                /*
                    RoundedInputField(
                      hintText: "Login",
                      controller: controller.usernameCtrl,
                      onChanged: (value) {},
                    ),
                    Obx(
                          () => RoundedPasswordField(
                        showPassword: controller.showPassword.value,
                        changeShowPassword: () {
                          controller.showPassword.value =
                          !controller.showPassword.value;
                        },
                        controller: controller.passwordCtrl,
                        onChanged: (value) {},
                      ),
                    ),
                    Obx(
                          () => Visibility(
                        visible: !controller.loading.value,
                        child: RoundedButton(
                          text: "ENTRAR",
                          press: () {
                            controller.login();
                          },
                        ),
                      ),
                    ),
                    Obx(
                          () => Visibility(
                        visible: controller.loading.value,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: Get.width * 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                              child: TextButton(
                                onPressed: null,
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),*/


                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: TextFormField(
                          controller: controller.usernameCtrl,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Login',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          //COR INTERNA DO CAMPO
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Campo inválido';
                            }
                          },
                        ),
                      ),
                    ),






                    SizedBox(height: 10,),





                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextFormField(
                          controller: controller.passwordCtrl,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Senha",
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          //COR INTERNA DO CAMPO
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Campo inválido';
                            }else if(value.length < 6){
                              return 'A senha deve conter pelo menos 6 caracteres';
                            }
                          },
                        ),
                      ),
                    ),




                  ],
                ),
                ),
                SizedBox(height: 10,),
                TextButton(
                  onPressed: (){
                    //SALVAR
                    controller.login();

                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF09334A),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFA4ABB3),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                      textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),



                SizedBox(height: 10,),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: TextButton(
                    onPressed: () {

                    },
                    child: Text(
                      'Esqueceu a senha?   >',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFC99B02),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  'Ou utilize suas redes sociais',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF6F8EB3),
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                      color: Color(0xFF09334A),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                      textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Google',
                    style: TextStyle(
                      color: Color(0xFF09334A),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 115),
                      textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Não possui cadastro? ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                    TextButton(
                      onPressed: () {  },
                      child: Text(
                        'Clique Aqui >',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFC99B02),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
        ),
      ]),
    );
  }
}
