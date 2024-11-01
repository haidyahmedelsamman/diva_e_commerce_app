import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/helpers/date_time_helper.dart';
import 'package:diva_e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/core/widgets/secondary_screen_custom_scaffold.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/horizontal_space.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/date_of_birth_widget.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/gender_selection_widget.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_personal_information_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  late UserPersonalInfoModel personalInfo;

  late final TextEditingController firstNameController =
      TextEditingController(text: personalInfo.firstName);

  late final TextEditingController lastNameController =
      TextEditingController(text: personalInfo.lastName);

  late final TextEditingController phoneNumberController =
      TextEditingController(text: personalInfo.phoneNumber);
  late final TextEditingController dateController = TextEditingController(
    text: DateTimeHelper.formatDate(personalInfo.dateOfBirth),
  );
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SecondaryScreenCustomScaffold(
      tailingWidget: CustomTextButton(
        textColor: Colors.white,
        text: 'Save',
        onPressed: onSavePressed,
      ),
      pageTitle: 'Personal Info',
      body: SingleChildScrollView(
          child: Form(
        key: formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    controller: firstNameController,
                    hintText: 'First name',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null) {
                        return 'First name cant be empty';
                      } else if (value.length < 3) {
                        return 'Please enter a valid first name';
                      }
                    },
                  ),
                ),
                const HorizontalSpace(space: 10),
                Expanded(
                  child: AppTextFormField(
                    controller: lastNameController,
                    hintText: 'Last name',
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                  ),
                ),
              ],
            ),
            const VerticalSpace(space: 15),
            AppTextFormField(
              controller: phoneNumberController,
              hintText: 'Phone number',
              suffixIcon: const Icon(
                color: Colors.black,
                Icons.phone,
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null) {
                  return 'Phone number cant be empty';
                }
              },
            ),
            const VerticalSpace(space: 15),
            DateOfBirthWidget(
              initDate: personalInfo.dateOfBirth,
              dateController: dateController,
            ),
            const VerticalSpace(space: 15),
            GenderSelectionWidget(
              initialValue: personalInfo.gender,
            ),
          ],
        ),
      )),
    );
  }

  void onSavePressed() {
    if (formKey.currentState!.validate()) {
      final newPersonalInfo = personalInfo.copyWith(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        phoneNumber: phoneNumberController.text,
        dateOfBirth: DateTime.parse(dateController.text),
        gender: context.read<UserDataCubit>().gender,
      );
      context.read<UserDataCubit>().updateUserPersonalInfo(newPersonalInfo);
      context.pop();
    }
  }

  @override
  void initState() {
    context.read<UserDataCubit>().state.whenOrNull(
      authenticated: (user) {
        personalInfo = user.personalInfo;
      },
    );
    super.initState();
  }
}
