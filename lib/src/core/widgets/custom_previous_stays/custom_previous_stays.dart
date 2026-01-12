import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomPreviousStays extends StatelessWidget {
  final VoidCallback? onSeeAllPressed;
  final int itemCount;
  final String imagePath;

  const CustomPreviousStays({
    super.key,
    this.onSeeAllPressed,
    this.itemCount = 3,
    this.imagePath = 'assets/images/image_banner_1.png',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              'Previous_Stays'.tr,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.accentGold,
            ),
            TextButton(
              onPressed: onSeeAllPressed ?? () {},
              child: CustomText(
                'See_All'.tr,
                color: AppColors.textSecondary,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: (context, index) => Container(
              width: 200,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
