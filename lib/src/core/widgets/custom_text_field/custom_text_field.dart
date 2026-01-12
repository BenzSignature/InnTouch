import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData? prefixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.accentGold,
      obscureText: obscureText,
      style: TextStyle(color: AppColors.textPrimary),
      decoration: InputDecoration(
        hintText: hintText.tr,
        hintStyle: TextStyle(color: AppColors.textSecondary),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.accentGold)
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textSecondary),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.accentGold, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      keyboardType: keyboardType,
    );
  }
}
