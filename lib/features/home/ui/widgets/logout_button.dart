import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:testapp/core/routing/routs.dart';
import 'package:testapp/features/home/data/repos/home_repo.dart';
import 'package:testapp/core/networking/api_result.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.logout),
      label: Text('Logout'),
      onPressed: () async {
        final shouldLogout = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('تأكيد تسجيل الخروج'),
            content: Text('هل أنت متأكد أنك تريد تسجيل الخروج؟'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false), // إلغاء
                child: Text('إلغاء'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true), // تأكيد
                child: Text('تأكيد'),
              ),
            ],
          ),
        );

        if (shouldLogout == true) {
          final homeRepo = GetIt.instance<HomeRepo>();

          // تنفيذ logout
          final result = await homeRepo.logout();

          result.when(
            success: (logoutResponse) async {
              if (logoutResponse.status == true) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(logoutResponse.message ?? 'تم تسجيل الخروج'),
                  ),
                );
                await clearAllSecuredData();
                Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil(Routes.loginScreen, (route) => false);
              } else {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('فشل تسجيل الخروج')));
              }
            },
            failure: (error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('حدث خطأ: $error')));
            },
          );
        }
      },
    );
  }

  static clearAllSecuredData() async {
    debugPrint('FlutterSecureStorage : all data has been cleared');
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.deleteAll();
  }
}
