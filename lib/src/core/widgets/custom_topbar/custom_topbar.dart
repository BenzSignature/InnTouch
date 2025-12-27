import 'package:get/get.dart';
import 'package:inn_touch/src/config/app_icons.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomTopBar extends StatelessWidget {
  final String? userName;
  final VoidCallback? onTapNotification;

  const CustomTopBar({super.key, this.userName, this.onTapNotification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            'Inntouch',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.accentGold,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText('Welcome'.tr, fontSize: 12, color: Colors.white70),
                  CustomText(
                    userName ?? 'Guest'.tr,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: onTapNotification,
                child: Stack(
                  children: [
                    Icon(
                      AppIcons.notifications,
                      color: AppColors.accentGold,
                      size: 26,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 8,
                          minHeight: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
