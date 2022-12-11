import 'package:admin_panel/constants.dart';
import 'package:admin_panel/responsive.dart';
import 'package:admin_panel/screens/dashbord/components/header.dart';
import 'package:admin_panel/screens/dashbord/components/my_files.dart';
import 'package:admin_panel/screens/dashbord/components/recent_files.dart';
import 'package:admin_panel/screens/dashbord/components/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const Header(),
              const SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const MyFiles(),
                        const SizedBox(height: defaultPadding),
                        const RecentFiles(),
                        if (Responsive.isMobile(context))
                          const SizedBox(height: defaultPadding),
                        //on mobile
                        if (Responsive.isMobile(context))
                          const StorageDetails(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
