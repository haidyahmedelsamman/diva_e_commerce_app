import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/core/widgets/secondary_screen_custom_scaffold.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/horizontal_space.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_measurements_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasurmentsScreen extends StatefulWidget {
  const MeasurmentsScreen({super.key});

  @override
  State<MeasurmentsScreen> createState() => _MeasurmentsScreenState();
}

class _MeasurmentsScreenState extends State<MeasurmentsScreen> {
  late UserMeasurementsModel measurments;

  late final TextEditingController heightController =
      TextEditingController(text: measurments.height);

  late final TextEditingController weightController =
      TextEditingController(text: measurments.weight);

  late final TextEditingController shoeSizeController =
      TextEditingController(text: measurments.shoeSize);

  late final TextEditingController dressSizeController = TextEditingController(
    text: measurments.dressSize,
  );

  late final TextEditingController pantsSizeController = TextEditingController(
    text: measurments.pantSize,
  );

  @override
  Widget build(BuildContext context) {
    return SecondaryScreenCustomScaffold(
      tailingWidget: CustomTextButton(
        textColor: Colors.white,
        text: 'Save',
        onPressed: onSavePressed,
      ),
      pageTitle: 'Measurments',
      body: SingleChildScrollView(
          child: Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: buildTextField(
                    '*Height',
                    heightController,
                    textIcon('cm'),
                  ),
                ),
                const HorizontalSpace(space: 10),
                Expanded(
                  child: buildTextField(
                    '*Weight',
                    weightController,
                    textIcon('kg'),
                  ),
                ),
              ],
            ),
            const VerticalSpace(space: 10),
            Row(
              children: [
                Expanded(
                  child: buildTextField(
                    '*Shoe size',
                    shoeSizeController,
                    null,
                  ),
                ),
                const HorizontalSpace(space: 10),
                Expanded(
                  child: buildTextField(
                    '*Dress size',
                    dressSizeController,
                    null,
                  ),
                ),
              ],
            ),
            const VerticalSpace(space: 10),
            buildTextField(
              '*Pants size',
              pantsSizeController,
              null,
            ),
          ],
        ),
      )),
    );
  }

  Widget buildTextField(
      String hintText, TextEditingController controller, Widget? icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyleManager.font14PrimaryBold,
        ),
        const VerticalSpace(space: 5),
        AppTextFormField(
          controller: controller,
          hintText: hintText,
          keyboardType: TextInputType.number,
          suffixIcon: icon,
        ),
      ],
    );
  }

  Widget textIcon(String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyleManager.font14PrimaryBold,
        ),
      ],
    );
  }

  void onSavePressed() {
    final newPersonalInfo = measurments.copyWith(
      height: heightController.text,
      weight: weightController.text,
      shoeSize: shoeSizeController.text,
      dressSize: dressSizeController.text,
      pantSize: pantsSizeController.text,
    );
    context.read<UserDataCubit>().updateUserMeasurments(newPersonalInfo);
    context.pop();
  }

  @override
  void initState() {
    context.read<UserDataCubit>().state.whenOrNull(
      authenticated: (user) {
        measurments = user.measurements;
      },
    );
    super.initState();
  }
}
