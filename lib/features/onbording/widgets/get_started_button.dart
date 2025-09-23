import 'package:flutter/material.dart';
import 'package:testapp/core/helpers/extension.dart';
import 'package:testapp/core/routing/routs.dart';
import 'package:testapp/core/theming/style.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(300, 50)),
      ),
      child: Text('Get Started', style: TextStyles.font16whitemedium),
    );
  }
}
