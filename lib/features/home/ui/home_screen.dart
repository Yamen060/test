import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const HomeTopBar(),
              // const DoctorsBlueContainer(),
              // verticalSpace(24),
              // const DoctorsSpecialitySeeAll(),
              // verticalSpace(18),
              // const SpecializationsBlocBuilder(),
              // verticalSpace(8),
              // const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
