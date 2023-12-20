// ignore_for_file: unused_local_variable, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fotpv/MyHome.dart';
import 'package:fotpv/phone.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => OtpState();
}

class OtpState extends State<Otp> {

  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border:  Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: const Color.fromRGBO(234, 239, 243, 1),
  ),
);

var code= "";
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context,);
        },
         icon:const Icon(Icons.arrow_back_ios_rounded),
         color: Colors.black,),
        ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("lib/assets/images/loginimage.png",
                height: 300,),
                 const SizedBox(
                  height: 10
                 ),
                
                const Text("OTP verification",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),),
                 Pinput(
                  length: 6,
                  showCursor: true,
                  onChanged: (value){
                    code = value;
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  
                ),
                
               
                const SizedBox(height: 20,),
                 SizedBox(
                  width: double.infinity,
                  
                  child: ElevatedButton(
                    onPressed: () async{
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: Phone.verify, smsCode: code);

                   // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, "/home",);
                    }, 
                    child: const Text("Verify Otp"),),
                 ),
                 Row(
                  children: [
                    TextButton(onPressed: () {
                  Navigator.pushNamed(context, "/");
                 }, child: const Text('Edit Phone number?',
                 style: TextStyle(color: Colors.black),),),
                  ],
                )
                 
              ],
            ),),
        )),
    ); }
  }
