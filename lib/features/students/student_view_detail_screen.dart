import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_widget/custom_button.dart';
import 'package:flutter_application_1/features/students/add_result.dart';

class StudentViewDetailScreen extends StatelessWidget {
  const StudentViewDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Student Details'),
        centerTitle: false,
        actions: [
          CustomButton(
            color: Colors.white,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AddResult(),
              );
            },
            label: 'Add Result',
            iconData: Icons.add,
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 5,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://static.vecteezy.com/system/resources/previews/001/131/187/large_2x/serious-man-portrait-real-people-high-definition-grey-background-photo.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Soman',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text('Reg No: 12345678'),
                    const SizedBox(height: 5),
                    const Text('College User name: Stems MOrazha'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Wrap(
              children: [
                ResultShowcard(
                  imgUrl:
                      'https://5.imimg.com/data5/PB/EA/XR/SELLER-14961972/screenshot-2-500x500.jpg',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ResultShowcard extends StatelessWidget {
  const ResultShowcard({
    super.key,
    required this.imgUrl,
  });
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            height: 220,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Title',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
