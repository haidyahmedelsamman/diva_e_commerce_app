import 'package:diva_e_commerce_app/core/helpers/app_regex.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_password_text_field.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/horizontal_space.dart';
import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/password_validations.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
            suffixIcon: const Icon(
              color: Colors.black,
              Icons.email_outlined,
            ),
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
          Row(
            children: [
              Expanded(
                child: AppTextFormField(
                  controller: context.read<SignUpCubit>().firstNameController,
                  hintText: 'First name',
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "First name can't be empty ";
                    }
                  },
                ),
              ),
              const HorizontalSpace(space: 10),
              Expanded(
                child: AppTextFormField(
                  controller: context.read<SignUpCubit>().lastNameController,
                  hintText: 'Last name',
                  keyboardType: TextInputType.name,
                  validator: (value) {},
                ),
              ),
            ],
          ),
          verticalSpace(10),
          AppTextFormField(
            hintText: 'Phone number',
            suffixIcon: const Icon(
              color: Colors.black,
              Icons.phone,
            ),
            controller: context.read<SignUpCubit>().phoneNumberController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number ';
              }
            },
            keyboardType: TextInputType.phone,
          ),
          verticalSpace(10),
          CustomPasswordTextField(
            controller: context.read<SignUpCubit>().passwordController,
            hintText: 'Password',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password ';
              }
            },
          ),
          verticalSpace(10),
          CustomPasswordTextField(
            controller: context.read<SignUpCubit>().passwordConfirmController,
            hintText: 'Confirm Password',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value !=
                      context.read<SignUpCubit>().passwordController.text) {
                return 'Please enter a valid password ';
              }
            },
          ),
          verticalSpace(10),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
          verticalSpace(10),
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
