import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelectionWidget extends StatefulWidget {
  final Gender? initialValue;
  const GenderSelectionWidget({
    super.key,
    this.initialValue,
  });

  @override
  State<GenderSelectionWidget> createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  late Gender? _selectedItem = widget.initialValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        // color: Colors.white,
      ),
      child: DropdownButtonFormField<Gender>(
        borderRadius: BorderRadius.circular(35),
        value: _selectedItem,
        icon: const Icon(Icons.person),
        decoration: InputDecoration(
          labelText: 'Select Gender',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        onChanged: (value) {
          context.read<UserDataCubit>().gender = value;
          setState(() {
            _selectedItem = value;
          });
        },
        validator: (value) {
          return null;
        },
        items: Gender.values.map(
          (gender) {
            return DropdownMenuItem<Gender>(
              value: gender,
              child: Text(
                gender.name,
                style: TextStyleManager.font15PrimaryRegular,
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
