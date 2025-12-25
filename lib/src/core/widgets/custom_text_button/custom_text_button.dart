import 'package:inn_touch/src/config/app_icons.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/utils/media_queery.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String name;
  final IconData icon;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil.screenHeight(context) / 18,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryGray,
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
                Icon(icon, size: 26, color: AppColors.accentGold),
                SizedBox(width: 14),
                CustomText(name),
              ],
            ),
            Row(
              children: [
                Icon(
                  AppIcons.arrowRight,
                  size: 26,
                  color: AppColors.accentGold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
