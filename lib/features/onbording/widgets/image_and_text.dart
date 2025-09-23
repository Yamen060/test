import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapp/core/theming/style.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 500.h,
          child: SvgPicture.asset('assets/svgs/loss.svg'),
        ),
        Positioned(
          bottom: 10.h,
          left: 0,
          right: 0,
          child: Text(
            'Find a Doctor, Make an Appointment',
            textAlign: TextAlign.center,
            style: TextStyles.font24BlackBold,
          ),
        ),
      ],
    );
  }
}
