import 'package:admin/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StudentsList extends StatelessWidget {
  const StudentsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Name"),
                ),
                DataColumn(
                  label: Text("Classes/Teams"),
                ),
                DataColumn(
                  label: Text("Avg. Attendance"),
                ),
                DataColumn(
                  label: Text("Message"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => studentsListDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow studentsListDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child:
                  //! known issue: textoverflow when mobile screen
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      fileInfo.title!,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //this is classes/teams column
      DataCell(Text(fileInfo.date!)),
      //this is attendance column
      DataCell(Text(fileInfo.size!)),
      DataCell(GestureDetector(
          onTap: () {
            print("[DEV] message button tapped");
          },
          child: Icon(Icons.message))),
    ],
  );
}
