import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/utils/media_queery.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String name;

  const CustomButton({super.key, required this.onPressed, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
        height: ScreenUtil.screenHeight(context) / 18,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPressed,
          child: CustomText(name, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
