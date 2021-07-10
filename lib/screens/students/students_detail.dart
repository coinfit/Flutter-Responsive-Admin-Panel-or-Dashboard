import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:admin/screens/students/components/students_header.dart';
import 'package:admin/screens/students/components/students_list.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class StudentsDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            StudentsHeader(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      SizedBox(height: defaultPadding),
                      StudentsList(),
                      if (Responsive.isMobile(context)) SizedBox(height: defaultPadding),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context)) SizedBox(width: defaultPadding),
              ],
            )
          ],
        ),
      ),
    );
  }
}
