import 'package:flutter/material.dart';
import 'package:flutter_application_1/colleges.dart';
import 'package:flutter_application_1/feedback.dart';
import 'package:flutter_application_1/reports.dart';
import 'package:flutter_application_1/students.dart';

import 'dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
              width: 300,
              color: Colors.lightBlue,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'College connect',
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(height: 25),
                  DrawerItem(
                    isActive: _tabController.index == 0,
                    iconData: Icons.dashboard,
                    label: 'Dashbaord',
                    onTap: () {
                      _tabController.animateTo(0);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    isActive: _tabController.index == 1,
                    iconData: Icons.school,
                    label: 'colleges',
                    onTap: () {
                      _tabController.animateTo(1);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    isActive: _tabController.index == 2,
                    iconData: Icons.people,
                    label: 'users',
                    onTap: () {
                      _tabController.animateTo(2);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    isActive: _tabController.index == 3,
                    iconData: Icons.feedback,
                    label: 'feedback',
                    onTap: () {
                      _tabController.animateTo(3);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    isActive: _tabController.index == 4,
                    iconData: Icons.report,
                    label: 'Report',
                    onTap: () {
                      _tabController.animateTo(4);
                    },
                  )
                ]),
              )),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                DashboardScreen(),
                CollegesScreen(),
                StudentTable(),
                AdminFeedbackTab(),
                AdminReportsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class Dashboard extends StatelessWidget {
//   const Dashboard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('DASHBOARD',
//               style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
//           SizedBox(
//             height: 30,
//           ),
//           Row(children: [
//             Container(
//               decoration: ShapeDecoration(
//                   color: Color.fromARGB(255, 182, 217, 236),
//                   shape: RoundedRectangleBorder(
//                       side: BorderSide(width: 1),
//                       borderRadius: BorderRadius.circular(16.0))),
//               height: 200,
//               width: 200,
//               child: Column(children: [
//                 Icon(
//                   Icons.school_sharp,
//                   size: 150,
//                 ),
//               ]),
//             ),
//             SizedBox(
//               width: 25,
//             ),
//             Container(
//                 decoration: ShapeDecoration(
//                     color: Color.fromARGB(255, 182, 217, 236),
//                     shape: RoundedRectangleBorder(
//                         side: BorderSide(width: 1),
//                         borderRadius: BorderRadius.circular(16.0))),
//                 height: 200,
//                 width: 200,
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.people,
//                       size: 150,
//                     ),
//                   ],
//                 ))
//           ])
//         ],
//       ),
//     );
//   }
// }

class DrawerItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  final Function() onTap;
  final bool isActive;
  const DrawerItem({
    super.key,
    required this.iconData,
    required this.label,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isActive ? Colors.red : Colors.blue,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(iconData),
              Text(label.toUpperCase(), style: TextStyle(color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
