import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/pages/auth/sign_in_screen.dart';
import 'package:recicla_mais/pages/auth/widgets/custom_divider.dart';
import 'package:recicla_mais/pages/auth/widgets/recicla_image.dart';
import 'package:recicla_mais/pages/common_widgets/custom_outlined_button.dart';
import 'package:recicla_mais/pages/common_widgets/custom_text_button.dart';
import 'package:recicla_mais/pages/common_widgets/custom_text_field.dart';
import 'package:recicla_mais/pages/common_widgets/lightgreen_custom_elevated_button.dart';
import 'package:recicla_mais/pages/home/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ReciclaImage(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Registrar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                    ),
                    // formulário
                    const CustomTextField(title: 'nome'),
                    CustomTextField(
                      title: 'cpf',
                      inputFormatter: [cpfFormatter],
                    ),
                    const CustomTextField(title: 'email'),
                    const CustomTextField(
                      title: 'senha',
                      isObscure: true,
                    ),

                    //botões
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          LightGreenButton(
                            title: 'registrar',
                            action: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const HomeScreen(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const CustomDivider(),
                          const SizedBox(height: 10),
                          const CustomOutlinedButton(
                              title: 'registrar com o gmail'),
                        ],
                      ),
                    ),

                    // ir para login
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text(
                            'Já possui uma conta?',
                            style: TextStyle(
                              color: CustomColors.customSwatchColor,
                              fontSize: 16,
                            ),
                          ),
                          CustomTextButton(
                            title: 'login',
                            action: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SigninPage()),
                              );
                            },
                          ),
                        ],
                      ),
                    )
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
