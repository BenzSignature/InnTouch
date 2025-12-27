import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomSpecialOffers extends StatelessWidget {
  const CustomSpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomText(
            'Special Offers'.tr,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.accentGold,
          ),
        ),
        SizedBox(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            children: const [
              CustomOfferCard(
                title: 'Romantic Getaway Package',
                imagePath: 'assets/images/image_banner_1.png',
              ),
              CustomOfferCard(
                title: 'Recharge & Relax: Spa Package',
                imagePath: 'assets/images/image_banner_2.png',
              ),
              CustomOfferCard(
                title: 'Family Fun Escape',
                imagePath: 'assets/images/image_banner_3.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
