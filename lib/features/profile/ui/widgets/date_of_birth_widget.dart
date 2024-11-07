import 'package:diva_e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class DateOfBirthWidget extends StatefulWidget {
  final TextEditingController dateController;
  final DateTime? initDate;
  const DateOfBirthWidget({
    super.key,
    required this.dateController,
    this.initDate,
  });

  @override
  DateOfBirthWidgetState createState() => DateOfBirthWidgetState();
}

class DateOfBirthWidgetState extends State<DateOfBirthWidget> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.dateController,
      hintText: "Date of Birth",
      suffixIcon: const Icon(
        color: Colors.black,
        Icons.calendar_today,
      ),
      readOnly: true,
      onTap: () => _selectDate(context),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select your date of birth';
        }
        return null;
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.initDate,
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }
}
