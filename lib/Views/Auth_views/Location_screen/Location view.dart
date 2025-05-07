import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';

import '../../Home_views/HomeScreen.dart';

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
// import 'package:get/get.dart';
// import 'package:online_groceries_app/Views/Home_views/HomeScreen.dart';
// import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
// import '../../../Model/location_service/location-service.dart';
// import  'location_service.dart';
//
// class Location_screen extends StatefulWidget {
//   const Location_screen({super.key});
//
//   @override
//   State<Location_screen> createState() => _Location_screenState();
// }
//
// class _Location_screenState extends State<Location_screen> {
//   final LocationService locationService = LocationService();
//   List<Map<String, String>> countries = [];
//   List<String> cities = [];
//   String? selectedCountryCode;
//   String? selectedCountryName;
//   String? selectedCity;
//   bool isLoadingCountries = true;
//   bool isLoadingCities = false;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchCountries();
//   }
//
//   Future<void> fetchCountries() async {
//     try {
//       final fetchedCountries = await locationService.getCountries();
//       setState(() {
//         countries = fetchedCountries;
//         isLoadingCountries = false;
//       });
//     } catch (e) {
//       print("Error fetching countries: $e");
//       setState(() {
//         isLoadingCountries = false;
//       });
//     }
//   }
//
//   Future<void> fetchCities(String countryCode) async {
//     setState(() {
//       isLoadingCities = true;
//       cities.clear();
//     });
//
//     try {
//       final fetchedCities = await locationService.getCities(countryCode);
//       setState(() {
//         cities = fetchedCities;
//         isLoadingCities = false;
//         selectedCity = null;
//       });
//     } catch (e) {
//       print("Error fetching cities: $e");
//       setState(() {
//         isLoadingCities = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           const SizedBox(height: 80),
//           Center(child: Image.asset("assets/illustration.png")),
//           const SizedBox(height: 30),
//           Center(
//             child: Text(
//               "Select your location",
//               style: TextStyle(
//                 color: App_Colors.blackcolor,
//                 fontSize: 26,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 45),
//             child: Text(
//               "Switch on your location to stay in tune with what's happening in your area",
//               style: TextStyle(
//                 color: App_Colors.greycolor,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           const SizedBox(height: 60),
//
//           // Country Dropdown
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text("Your Country/Zone", style: _labelStyle()),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: isLoadingCountries
//                 ? const CircularProgressIndicator()
//                 : DropdownButton<String>(
//               isExpanded: true,
//               hint: const Text("Select your country"),
//               value: selectedCountryCode,
//               items: countries.map((country) {
//                 return DropdownMenuItem<String>(
//                   value: country['code'],
//                   child: Text(country['name']!),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 final country = countries.firstWhere((c) => c['code'] == value);
//                 setState(() {
//                   selectedCountryCode = value;
//                   selectedCountryName = country['name'];
//                   selectedCity = null;
//                 });
//                 fetchCities(value!);
//               },
//             ),
//           ),
//           const SizedBox(height: 20),
//
//           // City Dropdown
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text("Your Area", style: _labelStyle()),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: isLoadingCities
//                 ? const CircularProgressIndicator()
//                 : DropdownButton<String>(
//               isExpanded: true,
//               hint: const Text("Select area"),
//               value: selectedCity,
//               items: cities.map((String city) {
//                 return DropdownMenuItem<String>(
//                   value: city,
//                   child: Text(city),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedCity = value;
//                 });
//               },
//             ),
//           ),
//           const SizedBox(height: 40),
//
//           // Submit Button
//           InkWell(
//             onTap: selectedCountryCode != null && selectedCity != null
//                 ? () => Get.to(() => HomeScreen())
//                 : null,
//             child: Container(
//               height: 55,
//               margin: const EdgeInsets.symmetric(horizontal: 30),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: selectedCountryCode != null && selectedCity != null
//                     ? Colors.green
//                     : Colors.grey,
//               ),
//               child: Center(
//                 child: Text(
//                   "Submit",
//                   style: TextStyle(
//                     color: App_Colors.whitecolor,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 50),
//         ]),
//       ),
//     );
//   }
//
//   TextStyle _labelStyle() {
//     return TextStyle(
//       color: App_Colors.greycolor,
//       fontSize: 16,
//       fontWeight: FontWeight.w600,
//     );
//   }
// }









// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:online_groceries_app/controller/constants/app_color/app_colors.dart';
//
// import '../../../Model/location_service/location-service.dart';
// import '../../Home_views/HomeScreen.dart';

// class _Location_screenState extends State<Location_screen> {
//   final LocationService locationService = LocationService();
//
//   List<Map<String, String>> countries = [];
//   List<String> cities = [];
//   String? selectedCountryCode;
//   String? selectedCountryName;
//   String? selectedCity;
//   bool isLoadingCountries = true;
//   bool isLoadingCities = false;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchCountries();
//   }
//
//   Future<void> fetchCountries() async {
//     try {
//       final fetchedCountries = await locationService.getCountries();
//       setState(() {
//         countries = fetchedCountries;
//         isLoadingCountries = false;
//       });
//     } catch (e) {
//       print("Error fetching countries: $e");
//       setState(() {
//         isLoadingCountries = false;
//       });
//     }
//   }
//
//   Future<void> fetchCities(String countryCode) async {
//     setState(() {
//       isLoadingCities = true;
//       cities.clear();  // Clear cities list before fetching new data
//     });
//
//     try {
//       final fetchedCities = await locationService.getCities(countryCode);
//       setState(() {
//         cities = fetchedCities;
//         isLoadingCities = false;
//         selectedCity = null;  // Reset the selected city
//       });
//     } catch (e) {
//       print("Error fetching cities: $e");
//       setState(() {
//         isLoadingCities = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           const SizedBox(height: 80),
//           Center(child: Image.asset("assets/illustration.png")),
//           const SizedBox(height: 30),
//           Center(
//             child: Text(
//               "Select your location",
//               style: TextStyle(
//                 color: App_Colors.blackcolor,
//                 fontSize: 26,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 45),
//             child: Text(
//               "Switch on your location to stay in tune with what's happening in your area",
//               style: TextStyle(
//                 color: App_Colors.greycolor,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           const SizedBox(height: 60),
//
//           // Country Dropdown
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text("Your Country/Zone", style: _labelStyle()),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: isLoadingCountries
//                 ? const CircularProgressIndicator()
//                 : DropdownButton<String>(
//               isExpanded: true,
//               hint: const Text("Select your country"),
//               value: selectedCountryCode,
//               items: countries.map((country) {
//                 return DropdownMenuItem<String>(
//                   value: country['code'],
//                   child: Text(country['name']!),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 final country = countries.firstWhere((c) => c['code'] == value);
//                 setState(() {
//                   selectedCountryCode = value;
//                   selectedCountryName = country['name'];
//                   selectedCity = null;  // Reset the city selection
//                 });
//                 fetchCities(value!);  // Fetch cities for the selected country
//               },
//             ),
//           ),
//           const SizedBox(height: 20),
//
//           // City Dropdown
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text("Your Area", style: _labelStyle()),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: isLoadingCities
//                 ? const CircularProgressIndicator()
//                 : DropdownButton<String>(
//               isExpanded: true,
//               hint: const Text("Select area"),
//               value: selectedCity,
//               items: cities.map((String city) {
//                 return DropdownMenuItem<String>(
//                   value: city,
//                   child: Text(city),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedCity = value;  // Update selected city
//                 });
//               },
//             ),
//           ),
//           const SizedBox(height: 40),
//
//           // Submit Button
//           InkWell(
//             onTap: selectedCountryCode != null && selectedCity != null
//                 ? () => Get.to(() => HomeScreen())
//                 : null,
//             child: Container(
//               height: 55,
//               margin: const EdgeInsets.symmetric(horizontal: 30),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: selectedCountryCode != null && selectedCity != null
//                     ? Colors.green
//                     : Colors.grey,
//               ),
//               child: Center(
//                 child: Text(
//                   "Submit",
//                   style: TextStyle(
//                     color: App_Colors.whitecolor,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 50),
//         ]),
//       ),
//     );
//   }
//
//   TextStyle _labelStyle() {
//     return TextStyle(
//       color: App_Colors.greycolor,
//       fontSize: 16,
//       fontWeight: FontWeight.w600,
//     );
//   }
// }







// class Location_screen extends StatefulWidget {
//   const Location_screen({super.key});
//
//   @override
//   _Location_screenState createState() => _Location_screenState();
// }
//
// class _Location_screenState extends State<Location_screen> {
//   final LocationService locationService = LocationService();
//   List<Map<String, String>> countries = [];
//   List<String> cities = [];
//   String? selectedCountryCode;
//   String? selectedCity;
//   bool isLoadingCountries = true;
//   bool isLoadingCities = false;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchCountries();
//   }
//
//   Future<void> fetchCountries() async {
//     try {
//       final fetchedCountries = await locationService.getCountries();
//       setState(() {
//         countries = fetchedCountries;
//         isLoadingCountries = false;
//       });
//     } catch (e) {
//       print("Error fetching countries: $e");
//       setState(() {
//         isLoadingCountries = false;
//       });
//     }
//   }
//
//   Future<void> fetchCities(String countryCode) async {
//     setState(() {
//       isLoadingCities = true;
//       cities.clear();
//     });
//
//     try {
//       final fetchedCities = await locationService.getCities(countryCode);
//       setState(() {
//         cities = fetchedCities;
//         isLoadingCities = false;
//         selectedCity = null;  // Reset city selection after country change
//       });
//     } catch (e) {
//       print("Error fetching cities: $e");
//       setState(() {
//         isLoadingCities = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           const SizedBox(height: 80),
//           Center(child: Image.asset("assets/illustration.png")),
//           const SizedBox(height: 30),
//           Center(
//             child: Text(
//               "Select your location",
//               style: TextStyle(
//                 color: App_Colors.blackcolor,
//                 fontSize: 26,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 45),
//             child: Text(
//               "Switch on your location to stay in tune with what's happening in your area",
//               style: TextStyle(
//                 color: App_Colors.greycolor,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           const SizedBox(height: 60),
//
//           // Country Dropdown
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text("Your Country/Zone", style: _labelStyle()),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: isLoadingCountries
//                 ? const CircularProgressIndicator()
//                 : DropdownButton<String>(
//               isExpanded: true,
//               hint: const Text("Select your country"),
//               value: selectedCountryCode,
//               items: countries.map((country) {
//                 return DropdownMenuItem<String>(
//                   value: country['code'],
//                   child: Text(country['name']!),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 final country = countries.firstWhere((c) => c['code'] == value);
//                 setState(() {
//                   selectedCountryCode = value;
//                   selectedCity = null;  // Reset the selected city
//                 });
//                 fetchCities(value!);  // Fetch cities based on the country code
//               },
//             ),
//           ),
//           const SizedBox(height: 20),
//
//           // City Dropdown
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text("Your Area", style: _labelStyle()),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: isLoadingCities
//                 ? const CircularProgressIndicator()
//                 : DropdownButton<String>(
//               isExpanded: true,
//               hint: const Text("Select area"),
//               value: selectedCity,
//               items: cities.map((city) {
//                 return DropdownMenuItem<String>(
//                   value: city,
//                   child: Text(city),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedCity = value;
//                 });
//               },
//             ),
//           ),
//           const SizedBox(height: 40),
//
//           // Submit Button
//           InkWell(
//             onTap: selectedCountryCode != null && selectedCity != null
//                 ? () => Get.to(() => HomeScreen())
//                 : null,
//             child: Container(
//               height: 55,
//               margin: const EdgeInsets.symmetric(horizontal: 30),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: selectedCountryCode != null && selectedCity != null
//                     ? Colors.green
//                     : Colors.grey,
//               ),
//               child: Center(
//                 child: Text(
//                   "Submit",
//                   style: TextStyle(
//                     color: App_Colors.whitecolor,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 50),
//         ]),
//       ),
//     );
//   }
//
//   TextStyle _labelStyle() {
//     return TextStyle(
//       color: App_Colors.greycolor,
//       fontSize: 16,
//       fontWeight: FontWeight.w600,
//     );
//   }
// }







