import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/core/helpers/spacing.dart';
import 'package:testapp/features/onbording/widgets/doc_logo_and_name.dart';
import 'package:testapp/features/onbording/widgets/get_started_button.dart';
import 'package:testapp/features/onbording/widgets/image_and_text.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),

                const ImageAndText(),
                verticalSpace(12),
                GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
