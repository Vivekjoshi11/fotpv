// // ignore_for_file: file_names

// import 'package:flutter/material.dart';

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       title: const Text("go to Camera "),

//       ),
//       body: SingleChildScrollView(
//         child: ElevatedButton(onPressed: (){
//             Navigator.pushNamed(context, "/camera");
//         }, child: const Text("Go to the camera"),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Row(
    mainAxisAlignment: MainAxisAlignment.center, // Centers the children
    children: [
      FaIcon(FontAwesomeIcons.fire, color: Colors.orange), // Your desired icon
      SizedBox(width: 10.0), // Optional spacing between icon and text
      Text('Tinder',
      style: TextStyle(color: Colors.orange),),
    ],
  ),
      ),
      // body: const Padding(
      //   padding: EdgeInsets.all(20.0),
      //   child: Column(
      //     children: [
      //       Text(
      //         'Welcome to the Home Page!',
      //         style: TextStyle(fontSize: 20.0),
      //       ),
      //       SizedBox(height: 10.0),
      //       Text(
      //         'This is the body content, where you can display information, images, or other UI elements relevant to your app.',
      //         textAlign: TextAlign.justify,
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // const Text(
            //   'Welcome to the Home Page!',
            //   style: TextStyle(fontSize: 20.0),
            // ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 width: 400, // Set width to screen width
                 height: 700, // Adjust the height of each image container as needed
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/image1.jpg'), // Replace 'image1.jpg' with your actual image path
                      fit: BoxFit.cover, // Adjust the fit as needed
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                  ),
                ),
                const SizedBox(width: 10), // Optional: Add spacing between images
            //     Container(
            //      width: MediaQuery.of(context).size.width, // Set width to screen width
            // height: MediaQuery.of(context).size.height,
            //       decoration: BoxDecoration(
            //         image: const DecorationImage(
            //           image: AssetImage('lib/assets/images/image2.jpg'), // Replace 'image2.jpg' with your actual image path
            //           fit: BoxFit.cover,
            //         ),
            //         borderRadius: BorderRadius.circular(8.0),
            //       ),
            //     ),
                // Add more Container widgets for additional images
              ],
            ),
            const SizedBox(height: 10.0),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.fire, color: Colors.orange), label: 'matches'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.star, color: Colors.black), label: 'star'),
          BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.black), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: 'Profile'),
        ],
        onTap: (index) {
          print("Selected Index: $index");
        },
      ),
    );
  }
}



