import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/helpers/app_regex.dart';
import 'package:diva_e_commerce_app/core/widgets/cancel_button.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_password_text_field.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/core/widgets/password_validations.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordDialog extends StatefulWidget {
  const ChangePasswordDialog({super.key});

  @override
  State<ChangePasswordDialog> createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  bool isOldPasswordObscureText = true;

  bool isNewPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  buildOldPasswordField(),
                  const VerticalSpace(space: 10),
                  buildNewPasswordField(context),
                  const VerticalSpace(space: 10),
                  buildConfirmPasswordField(context),
                ],
              ),
            ),
            const VerticalSpace(space: 10),
            PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CancelButton(),
                CustomTextButton(
                  textColor: Colors.white,
                  text: 'Change',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<UserDataCubit>().changeUserPassword(
                            newPasswordController.text,
                            oldPasswordController.text,
                          );
                      context.pop();
                    }
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOldPasswordField() {
    return CustomPasswordTextField(
      controller: oldPasswordController,
      hintText: 'Old password',
      validator: (value) {
        if (value == null || value.isEmpty || value.length < 8) {
          return 'Please enter a valid password ';
        }
      },
    );
  }

  Widget buildConfirmPasswordField(BuildContext context) {
    return CustomPasswordTextField(
      controller: confirmPasswordController,
      hintText: 'Confirm password',
      validator: (value) {
        if (value == null ||
            value.isEmpty ||
            value != newPasswordController.text) {
          return 'Please enter a valid password ';
        }
      },
    );
  }

  Widget buildNewPasswordField(BuildContext context) {
    return CustomPasswordTextField(
      controller: newPasswordController,
      hintText: 'New password',
      validator: (value) {
        if (value == null ||
            value.isEmpty ||
            !AppRegex.isPasswordValid(value)) {
          return 'Please enter a valid password ';
        }
      },
    );
  }

  void setupPasswordControllerListener() {
    newPasswordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(newPasswordController.text);
        hasUppercase = AppRegex.hasUpperCase(newPasswordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(newPasswordController.text);
        hasNumber = AppRegex.hasNumber(newPasswordController.text);
        hasMinLength = AppRegex.hasMinLength(newPasswordController.text);
      });
    });
  }

  @override
  void initState() {
    setupPasswordControllerListener();
    super.initState();
  }
}
