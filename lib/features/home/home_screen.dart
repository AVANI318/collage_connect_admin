import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/collages/colleges.dart';
import 'package:flutter_application_1/features/students/students.dart';

import '../dashboard/dashboard.dart';

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
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Row(
        children: [
          Container(
              width: 230,
              color: Colors.purple,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Column(
                        children: [
                          Text(
                            'College connect',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Admin',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 90),
                      DrawerItem(
                        isActive: _tabController.index == 0,
                        iconData: Icons.dashboard_rounded,
                        label: 'Dashboard',
                        onTap: () {
                          _tabController.animateTo(0);
                        },
                      ),
                      const SizedBox(
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
                      const SizedBox(
                        height: 20,
                      ),
                      DrawerItem(
                        isActive: _tabController.index == 2,
                        iconData: Icons.people,
                        label: 'Students',
                        onTap: () {
                          _tabController.animateTo(2);
                        },
                      ),
                    ]),
              )),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const [
                DashboardScreen(),
                CollegesScreen(),
                StudentTable(),
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
    return GestureDetector(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(15),
        color: isActive ? Colors.white : Colors.purpleAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Row(
            children: [
              Icon(iconData, color: isActive ? Colors.black : Colors.white),
              SizedBox(
                width: 10,
              ),
              Text(label.toUpperCase(),
                  style:
                      TextStyle(color: isActive ? Colors.black : Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
