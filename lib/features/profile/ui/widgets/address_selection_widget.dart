import 'package:csc_picker/csc_picker.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressSelectionWidget extends StatefulWidget {
  const AddressSelectionWidget({super.key});

  @override
  State<AddressSelectionWidget> createState() => _AddressSelectionWidgetState();
}

class _AddressSelectionWidgetState extends State<AddressSelectionWidget> {
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  UserModel? userModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataCubit, UserDataState>(
      builder: (context, state) {
        state.whenOrNull(
          authenticated: (user) {
            userModel = user;
          },
        );
        return CSCPicker(
          currentCountry: userModel?.personalInfo.country,
          currentState: userModel?.personalInfo.state,
          showStates: true,
          showCities: false,
          flagState: CountryFlag.DISABLE,
          dropdownDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          disabledDropdownDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            color: Colors.grey.shade300,
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          countrySearchPlaceholder: "Country",
          stateSearchPlaceholder: "State",
          countryDropdownLabel: "* Country",
          stateDropdownLabel: "* State",
          countryFilter: const [
            CscCountry.Egypt,
            CscCountry.Saudi_Arabia,
            CscCountry.United_Arab_Emirates
          ],
          selectedItemStyle: const TextStyle(
            color: ColorsManager.primary,
            fontSize: 14,
          ),
          dropdownHeadingStyle: const TextStyle(
            color: ColorsManager.primary,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          dropdownItemStyle: const TextStyle(
            color: ColorsManager.primary,
            fontSize: 14,
          ),
          dropdownDialogRadius: 25.0,
          searchBarRadius: 25.0,
          onCountryChanged: (value) {
            context.read<UserDataCubit>().country = value;

            setState(() {
              countryValue = value;
            });
          },
          onStateChanged: (value) {
            context.read<UserDataCubit>().userState = value;

            setState(() {
              stateValue = value ?? '';
            });
          },
          onCityChanged: (value) {
            setState(() {
              cityValue = value ?? '';
            });
          },
        );
      },
    );
  }
}
