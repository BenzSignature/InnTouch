import 'package:inn_touch/src/config/export_config.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final int? maxLine;
  final TextOverflow? overflow;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final double? height;
  const CustomText(
    this.text, {
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.decoration,
    this.textAlign,
    this.maxLine,
    this.overflow,
    this.fontStyle,
    this.fontFamily,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxLine,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: fontFamily,
        decoration: decoration ?? TextDecoration.none,
        color: color ?? AppColors.textPrimary,
        fontSize: fontSize ?? 18,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontStyle: fontStyle,
        height: height,
      ),
    );
  }
}
