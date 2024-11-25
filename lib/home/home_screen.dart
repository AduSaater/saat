import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> items = [
    { "name": "House 1",
      "imageUrl": "assets/images/house.jpg"

    },
    {
      "name": "House 2",
      "imageUrl": "assets/images/house.jpg"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10, // Horizontal spacing
            mainAxisSpacing: 10, // Vertical spacing
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      items[index]['imageUrl'] ?? "",
                      fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    items[index]['name'] ?? "",
                    style: TextStyle(color: Colors.white, fontSize: 24.sp),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

