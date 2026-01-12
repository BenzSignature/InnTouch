import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const CustomInfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.accentGold, size: 22),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(label.tr, fontSize: 10, color: AppColors.textSecondary),
            CustomText(
              value,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ],
        ),
      ],
    );
  }
}
