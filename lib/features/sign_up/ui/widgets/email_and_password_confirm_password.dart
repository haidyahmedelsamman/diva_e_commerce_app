import 'package:diva_e_commerce_app/core/helpers/app_regex.dart';
import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/password_validations.dart';

class EmailAndPasswordConfirmPassword extends StatefulWidget {
  const EmailAndPasswordConfirmPassword({super.key});

  @override
  State<EmailAndPasswordConfirmPassword> createState() =>
      _EmailAndPasswordConfirmPasswordState();
}

class _EmailAndPasswordConfirmPasswordState
    extends State<EmailAndPasswordConfirmPassword> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: StringManager.email,
            controller: context.read<SignUpCubit>().emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email ';
              }
            },
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(10),
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password ';
              }
            },
            keyboardType: TextInputType.visiblePassword,
            hintText: StringManager.password,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              icon: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(10),
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordConfirmController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value !=
                      context.read<SignUpCubit>().passwordController.text) {
                return 'Please enter a valid password ';
              }
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: isPasswordConfirmationObscureText,
            hintText: StringManager.confirmPassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              icon: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(10),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
