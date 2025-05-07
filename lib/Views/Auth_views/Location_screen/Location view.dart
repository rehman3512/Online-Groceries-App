import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app/Views/Auth_views/Login_screen/Login_Screen.dart';
import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

class Location_screen extends StatefulWidget {
  const Location_screen({super.key});

  @override
  State<Location_screen> createState() => _Location_screenState();
}

class _Location_screenState extends State<Location_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Center(child: Image.asset("assets/illustration.png")),
            SizedBox(height: 30,),
            Center(
              child: Text("Select your location",style: TextStyle(
                color: App_Colors.blackcolor,
                fontSize: 26,fontWeight: FontWeight.w600,
              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Text("swithch on your location to stay in tune with what's happening in your area",
                style: TextStyle( color: App_Colors.greycolor,
                  fontSize: 16,fontWeight: FontWeight.w600,
                ),),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Your Zone",style: TextStyle(
                  color: App_Colors.greycolor,fontSize: 16,
                  fontWeight: FontWeight.w600),),
            ),
            ListTile(title: Text("Banasree",style: TextStyle(
                color: App_Colors.blackcolor,fontSize: 18,
                fontWeight: FontWeight.w600),),
            ),
            Divider(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Your Area",style: TextStyle(
                  color: App_Colors.greycolor,fontSize: 16,
                  fontWeight: FontWeight.w600),),
            ),
            ListTile(title: Text("Types of your area",style: TextStyle(
                color: App_Colors.greycolor,fontSize: 18,
                fontWeight: FontWeight.w600),),
            ),
            Divider(),
            SizedBox(height: 30,),
            InkWell( onTap: (){
              Get.to(()=>HomeScreen());
            },
              child: Container( height: 55,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                ),
                child: Center(child: Text("Submit",style: TextStyle(
                    color: App_Colors.whitecolor,fontSize: 16,
                    fontWeight: FontWeight.w600),
                ),),
              ),
            ),
            SizedBox(height: 50,),
          ],),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class LocationSelectionScreen extends StatefulWidget {
//   @override
//   _LocationSelectionScreenState createState() => _LocationSelectionScreenState();
// }
//
// class _LocationSelectionScreenState extends State<LocationSelectionScreen> {
//   String? selectedZone;
//   final List<String> zones = ['Zone A', 'Zone B', 'Zone C', 'Zone D'];
//
//   void _confirmSelection() {
//     if (selectedZone != null) {
//       // Navigate to the next screen or save selection
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('You selected $selectedZone')),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please select a zone')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Your Zone'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Choose your delivery zone:',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 16),
//             DropdownButtonFormField<String>(
//               value: selectedZone,
//               hint: Text('Select Zone'),
//               items: zones.map((zone) {
//                 return DropdownMenuItem<String>(
//                   value: zone,
//                   child: Text(zone),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedZone = value;
//                 });
//               },
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: _confirmSelection,
//               child: Text('Confirm Zone'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
