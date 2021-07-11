import 'package:admin/responsive.dart';
import 'package:admin/screens/students/components/students_header.dart';
import 'package:admin/screens/students/components/students_list.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class StudentsDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        //$ change length to # of teams managed by a teacher
        length: 3,
        child: Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StudentsHeader(),
                SizedBox(height: defaultPadding),
                TabBar(
                  onTap: (index) {
                    print(index);
                  },
                  isScrollable: true,
                  // labelStyle: boldTextStyle(),
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Text('All'),
                    ),
                    Tab(
                      child: Text('Team 1'),
                    ),
                    Tab(
                      child: Text('Team 2'),
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
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
        ),
      ),
    );
  }
}
