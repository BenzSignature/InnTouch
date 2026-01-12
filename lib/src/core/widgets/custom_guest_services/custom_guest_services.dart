import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomGuestServices extends StatelessWidget {
  const CustomGuestServices({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {'icon': Icons.vpn_key_outlined, 'label': 'Digital Key'},
      {'icon': Icons.wifi, 'label': 'WiFi'},
      {'icon': Icons.cleaning_services_outlined, 'label': 'Cleaning'},
      {'icon': Icons.phone_in_talk_outlined, 'label': 'Reception'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          'Guest_Services'.tr,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.accentGold,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: services.map((service) {
            return Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.accentGold, width: 1.5),
                    color: Colors.transparent,
                  ),
                  child: Icon(
                    service['icon'] as IconData,
                    color: AppColors.accentGold,
                    size: 28,
                  ),
                ),
                const SizedBox(height: 8),
                CustomText(
                  (service['label'] as String).tr,
                  fontSize: 12,
                  color: AppColors.textPrimary,
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
