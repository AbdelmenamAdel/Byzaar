import 'package:byzaar/core/styles/texts/app_text_styles.dart';
import 'package:byzaar/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: " لا تمتلك حساب؟ ",
        style: TextStyles.semiBold16.copyWith(color: Color(0XFF949D9E)),
      ),
      TextSpan(
        text: "قم بإنشاء حساب",
        style: TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),
      ),
    ]));
  }
}
