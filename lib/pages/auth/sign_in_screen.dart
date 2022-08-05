import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/pages/auth/sign_up_screen.dart';
import 'package:recicla_mais/pages/auth/widgets/custom_divider.dart';
import 'package:recicla_mais/pages/auth/widgets/recicla_image.dart';
import 'package:recicla_mais/pages/common_widgets/custom_outlined_button.dart';
import 'package:recicla_mais/pages/common_widgets/custom_text_button.dart';
import 'package:recicla_mais/pages/common_widgets/custom_text_field.dart';
import 'package:recicla_mais/pages/common_widgets/lightgreen_custom_elevated_button.dart';
import 'package:recicla_mais/pages/home/home_screen.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ReciclaImage(),
          // Formulário e botões para login
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Login titulo
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.customSwatchColor,
                      ),
                    ),
                    // formulario
                    const CustomTextField(
                      title: 'e-mail',
                    ),
                    const CustomTextField(
                      title: 'senha',
                      isObscure: true,
                    ),

                    //botões de acesso
                    Padding(
                      padding: const EdgeInsets.only(top: 35, bottom: 15),
                      child: LightGreenButton(
                        title: 'entrar',
                        action: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const HomeScreen(),
                          ),
                        ),
                      ),
                    ),

                    const CustomDivider(),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CustomOutlinedButton(
                        title: 'entrar com gmail',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Text(
                            'Não possui uma conta?',
                            style: TextStyle(
                                color: CustomColors.customSwatchColor,
                                fontSize: 16),
                          ),
                          CustomTextButton(
                            title: 'registrar',
                            action: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SignUpScreen()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
