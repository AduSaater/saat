import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saat/home/home_screen.dart';

class TextFormWidget extends StatelessWidget {
  TextFormWidget({super.key});
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login",
        style: TextStyle(
          fontSize: 20.sp,
          color: Colors.white
        ),
        ),
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              validator: (value){
                if(value== null){
                  return "Email is required";
                }
                return null;
              },
            ),
            SizedBox(height: 20.h,),
            TextFormField(
              controller: _passwordWord,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
              ),
              validator: (value){
                if(value== null){
                  return "Password is required";
                }
                return null;
              },
              obscureText: true,
            ),
            SizedBox(height: 20.h),

            ElevatedButton(
                onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Text("Login", style: TextStyle(
                  color: Colors.white
                ),),
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue,
                 fixedSize: Size(1.sw, 60)
               ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
