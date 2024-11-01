import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:diva_e_commerce_app/core/widgets/cancel_button.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/address_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressDialog extends StatelessWidget {
  const AddressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AddressSelectionWidget(),
            const VerticalSpace(space: 10),
            AppTextFormField(
              controller:
                  context.read<UserDataCubit>().addressTextEditingController,
              hintText: '* Address',
              keyboardType: TextInputType.text,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CancelButton(),
                CustomTextButton(
                  textColor: Colors.white,
                  text: 'Save',
                  onPressed: () {
                    context.read<UserDataCubit>().updateUserAddress();
                    context.pop();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
