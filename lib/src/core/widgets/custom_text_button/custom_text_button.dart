import 'package:inn_touch/src/config/app_icons.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/utils/media_queery.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String name;
  final IconData? icon;
  final double? sizeIcon;
  final bool iconArrowRight;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.icon,
    this.sizeIcon,
    required this.iconArrowRight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        height: ScreenUtil.screenHeight(context) / 16,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondaryGray,
            overlayColor: AppColors.accentGold,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, size: sizeIcon ?? 26, color: AppColors.accentGold),
                  SizedBox(width: 18),
                  CustomText(name, fontWeight: FontWeight.bold),
                ],
              ),
              iconArrowRight
                  ? Row(
                      children: [
                        Icon(
                          AppIcons.arrowRight,
                          size: 26,
                          color: AppColors.accentGold,
                        ),
                      ],
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
