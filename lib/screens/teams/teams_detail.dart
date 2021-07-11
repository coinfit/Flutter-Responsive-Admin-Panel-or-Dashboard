import 'package:admin/responsive.dart';
import 'package:admin/screens/students/components/students_header.dart';
import 'package:admin/screens/students/components/students_list.dart';
import 'package:admin/screens/teams/components/teams_info.dart';
import 'package:admin/screens/teams/components/teams_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../constants.dart';

class TeamsDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        //$ change length to # of teams managed by a teacher
        length: 3,
        child: Scaffold(
          floatingActionButton: SpeedDial(
            // animatedIcon: AnimatedIcons.menu_close,
            // animatedIconTheme: IconThemeData(size: 22.0),
            // / This is ignored if animatedIcon is non null
            // child: Text("open"),
            // activeChild: Text("close"),
            icon: Icons.add,
            activeIcon: Icons.close,
            spacing: 3,
            // openCloseDial: isDialOpen,
            childPadding: EdgeInsets.all(5),
            spaceBetweenChildren: 4,
            // dialRoot: customDialRoot
            //     ? (ctx, open, toggleChildren) {
            //         return ElevatedButton(
            //           onPressed: toggleChildren,
            //           style: ElevatedButton.styleFrom(
            //             primary: Colors.blue[900],
            //             padding: EdgeInsets.symmetric(horizontal: 22, vertical: 18),
            //           ),
            //           child: Text(
            //             "Custom Dial Root",
            //             style: TextStyle(fontSize: 17),
            //           ),
            //         );
            //       }
            //     : null,
            buttonSize: 56, // it's the SpeedDial size which defaults to 56 itself
            // iconTheme: IconThemeData(size: 22),
            // label: Text("Open"), // The label of the main button.
            /// The active label of the main button, Defaults to label if not specified.
            // activeLabel: Text("Close"),

            /// Transition Builder between label and activeLabel, defaults to FadeTransition.
            // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
            /// The below button size defaults to 56 itself, its the SpeedDial childrens size
            childrenButtonSize: 56.0,
            // visible: visible,
            direction: SpeedDialDirection.Up,
            // switchLabelPosition: switchLabelPosition,

            /// If true user is forced to close dial manually
            closeManually: false,

            /// If false, backgroundOverlay will not be rendered.
            // renderOverlay: renderOverlay,
            // overlayColor: Colors.black,
            // overlayOpacity: 0.5,
            onOpen: () => print('OPENING DIAL'),
            onClose: () => print('DIAL CLOSED'),
            useRotationAnimation: true,
            tooltip: 'Open Speed Dial',
            heroTag: 'speed-dial-hero-tag',
            foregroundColor: Colors.white,
            backgroundColor: Colors.orange,
            // activeForegroundColor: Colors.red,
            // activeBackgroundColor: Colors.blue,
            elevation: 8.0,
            isOpenOnStart: false,
            animationSpeed: 200,
            shape: CircleBorder(),
            // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            children: [
              SpeedDialChild(
                child: Icon(Icons.accessibility),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                label: 'Edit Teams',
                onTap: () => print("FIRST CHILD"),
              ),
              SpeedDialChild(
                child: Icon(Icons.brush),
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                label: 'Add Teams',
                onTap: () => print('SECOND CHILD'),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TeamsHeader(),
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
                TeamsInfo(),
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
