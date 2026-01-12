import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomDate extends StatelessWidget {
  final String label;
  final String date;

  const CustomDate({super.key, required this.label, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(label.tr, fontSize: 12, color: AppColors.textSecondary),
        const SizedBox(height: 4),
        CustomText(
          date,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ],
    );
  }
}
