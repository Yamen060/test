import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/core/helpers/spacing.dart';
import 'package:testapp/core/theming/style.dart';
import 'package:testapp/core/widgets/app_text_button.dart';
import 'package:testapp/features/login/logic/cubit/login_cubit.dart';
import 'package:testapp/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:testapp/features/login/ui/widgets/email_and_password.dart';
import 'package:testapp/features/login/ui/widgets/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();

  final bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back  ', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\`re excited to have you back,can\`t wait \n see what you\`ve been up to since you last logged in',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),

                    verticalSpace(26),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot PassWord?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      
                        
                       onPressed: () { validateThenDoLogin(context); },
                    ),
                    verticalSpace(76),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
