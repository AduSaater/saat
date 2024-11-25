import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiDesign extends StatelessWidget {
   UiDesign({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
    appBar: AppBar(
      backgroundColor: Color(0xFF131312),
      leading: GestureDetector(
          onTap: (){
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(Icons.menu, color: Color(0xFFFFFFFF),)),
      title: Image.asset('assets/images/Ib logics 1.png'),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(Icons.shopping_bag, color: Color(0xFFFFFFFF),),
        )
      ],
    ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 16),
               child: Container(
                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                 height: 142,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Color(0xFF843667),
                   borderRadius: BorderRadius.circular(8)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text("Ib’s Logics", style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                        ),),
                         SizedBox(height: 5,),
                         Text("Find all the phone accessories\nyou need for the New Year",
                         style: TextStyle(
                           fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white
                         ),
                         ),
                         SizedBox(height: 5,),
                         Text("All at special discounts!", style: TextStyle(
                             color: Color(0xFFFFFFFF),
                             fontWeight: FontWeight.w400,
                             fontSize: 10
                         ),),
                       ],
                     ),

                     Image.asset("assets/images/img.png"),
                   ],
                 ),
               ),
             ),
            // *************** Categories *******************
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                _buildCategory(
                  text: "All",
                  icon: Icons.phone_android
                ),
                  _buildCategory(
                      text: "Computers",
                      icon: Icons.phone_android
                  ),
                  _buildCategory(
                      text: "Speakers",
                      icon: Icons.phone_android
                  )

                ],
              ),
            ),
         SizedBox(height: 20,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Hot Sales"),
               Text("See All", style: TextStyle(
                 color: Colors.blue
               ),),
             ],
           ),
         ),
         SizedBox(height: 20,),
         //Product card
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 _buildProductCard(
                   image: "assets/images/headset.png",
                 ),
                 _buildProductCard(
                   image: "assets/images/laptop.png"
                 ),

               ],
             ),
           ),
            //******************* Get Featured products ************
            SizedBox(height: 20.h,),
            SizedBox(
              height: 500.h,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10.0, // Horizontal space between items
        mainAxisSpacing: 10.0, // Vertical space between items
        childAspectRatio: 0.75, // Adjust for card aspect ratio
        ),
        itemCount: 4, // Number of items in the grid
        itemBuilder: (context, index) {
        return _buildProductCard(
        image: "assets/images/headset.png",
        );
        },
        ),
            ),


          ],
        ),
      ),
    );
  }
}
Widget _buildProductCard({
  required final String image
}){

  return      Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      width: 166,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(image,
            height: 103, width: 110,
          )),
          SizedBox(height: 20,),
          Text("Airpods Max"),
          SizedBox(height: 10,),
          Text("Winning Beat Sound", style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: Color(0xFF9C9C9C)
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("N9000"),
              Icon(Icons.add, color: Colors.black,)
            ],
          ),
        ],
      ),
    ),
  );
}
Widget _buildCategory({
   required final String text,
   required final IconData icon,
}){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xFFFFFFFF)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 10,),
          SizedBox(width: 5,),
          Text(text, style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF8B8B8B)
          ),)
        ],
      ),
    ),
  );
}

class Categories extends StatelessWidget {
  const Categories({super.key, required this.text, required this.icon});
   final String text;
   final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Color(0xFFFFFFFF)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 10,),
            SizedBox(width: 5,),
            Text(text, style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF8B8B8B)
            ),)
          ],
        ),
      ),
    );
  }
}
