// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fotpv/otp.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  static String verify = "";

  @override
  State<Phone> createState() => PhoneState();
}

class PhoneState extends State<Phone> {
  TextEditingController countrycode = TextEditingController();
  var phone = "";
  @override

  void initState() {
    
    countrycode.text = "+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "lib/assets/images/loginimage.png",
                height: 300,),
                 const SizedBox(height: 10),
                const Text("OTP verification",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 40,
                        child: TextField(
                        
                    // controller: countrycode,
                    // decoration: InputDecoration(border: InputBorder.none),
                    ),
                    ),
                      const Text("|",
                      style: TextStyle(fontSize: 40,
                      color: Colors.grey),
                      
                      ),
                       Expanded(
                        
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            phone = value;
                          },
                        decoration: const InputDecoration(border: InputBorder.none,
                        hintText: "phone number"),
                      ),
                      ),
                      // SizedBox(
                      //   // width: double.infinity,
                      //   child: TextField(
                      //     // decoration: InputDecoration(border: InputBorder.none),
                      //   ),
                      // )
                    ],
                  ),
                ),
               
                const SizedBox(height: 20,),
                 SizedBox(
                  width: double.infinity,
                  
                  child: ElevatedButton(
                    onPressed: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '+91 $phone',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      Phone.verify = verificationId;
                      Navigator.pushNamed(context, "/otp",);
                    },
                     codeAutoRetrievalTimeout: (String verificationId) {},
);
                   
                  }, child: const Text("Send Otp"),),
                 )
              ],
            ),),
        )),
    ); }
}