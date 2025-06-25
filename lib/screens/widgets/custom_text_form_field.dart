import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.poppins,
    required this.roboto,
    required this.validator,
  });

  final String? poppins, roboto;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Full Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: poppins,
                color: const Color(0xFFFFFCFC),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: validator,
            cursorColor: const Color(0xFFFFFCFC),
            cursorWidth: 2,
            style: const TextStyle(
              color: Color(0xFFFFFCFC),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: 'e.g. Sarah Khalid',
              hintStyle: TextStyle(
                color: const Color(0xFF6D6D6D),
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: roboto,
              ),
              fillColor: const Color(0xFF282828),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: _buildTextFieldBorder(),
              focusedBorder: _buildTextFieldBorder(),
              errorBorder: _buildTextFieldBorder(Colors.red),
              focusedErrorBorder: _buildTextFieldBorder(Colors.red,1.5),
              errorStyle: const TextStyle(
                color: Colors.red,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // const Spacer(),
        ],
      ),
    );
  }
}

OutlineInputBorder _buildTextFieldBorder([Color? color, double? width]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: color ?? const Color(0xFF282828),
      width: width ?? 1,
    ),
  );
}
