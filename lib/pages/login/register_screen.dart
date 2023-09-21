import 'package:flutter/material.dart';
import 'package:campus_connect_app/pages/login/login_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:campus_connect_app/pages/home2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference userRef = FirebaseFirestore.instance.collection("users");

  register(context) async {
    var userCredential = await auth.createUserWithEmailAndPassword(
        email: email.text, password: password.text);
    userRef.add({"email": email.text, "password": password.text}).then(
        (value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home2(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    // void launchFacebookPage() async {
    //   const facebookPageUrl =
    //       'https://www.facebook.com/nsbm.lk/'; //  Facebook page URL
    //   if (await canLaunch(facebookPageUrl)) {
    //     await launch(facebookPageUrl);
    //   } else {
    //     throw 'Could not launch $facebookPageUrl';
    //   }
    // }

    // void launchInstaPage() async {
    //   const facebookPageUrl =
    //       'https://www.instagram.com/nsbmgreenuniversity/?hl=en'; //  insta page URL
    //   if (await canLaunch(facebookPageUrl)) {
    //     await launch(facebookPageUrl);
    //   } else {
    //     throw 'Could not launch $facebookPageUrl';
    //   }
    // }

    // void launchTwitterPage() async {
    //   const facebookPageUrl =
    //       'https://twitter.com/i/flow/login?redirect_after_login=%2Fnsbm_srilanka'; //  twitter page URL
    //   if (await canLaunch(facebookPageUrl)) {
    //     await launch(facebookPageUrl);
    //   } else {
    //     throw 'Could not launch $facebookPageUrl';
    //   }
    // }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "Hello! Register to get started",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 2, 76, 55)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //username
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            /*email
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                ),
              ),
            ),  */
            // const SizedBox(height: 15),
            //password
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //confirm password
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm password',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //register button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Color.fromARGB(223, 5, 119, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        register(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      color: Color(0xFFE8ECF4),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text("Or Register With"),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFFE8ECF4),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              // child: Row(
              //   children: [
              //     Expanded(
              //       child: GestureDetector(
              //         onTap: () {
              //           // This function will be triggered when the Facebook icon is tapped
              //           launchFacebookPage(); // You need to implement this function
              //         },
              //         child: Container(
              //           decoration: BoxDecoration(
              //             border: Border.all(
              //               color: const Color(0xFFE8ECF4),
              //             ),
              //             borderRadius: BorderRadius.circular(8),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(12.0),
              //             child: Image.asset(
              //               "assets/fb.png",
              //               height: 32,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(width: 10),
              //     Expanded(
              //       child: GestureDetector(
              //         onTap: () {
              //           // This function will be triggered when the Facebook icon is tapped
              //           launchInstaPage(); // You need to implement this function
              //         },
              //         child: Container(
              //           decoration: BoxDecoration(
              //             border: Border.all(
              //               color: const Color(0xFFE8ECF4),
              //             ),
              //             borderRadius: BorderRadius.circular(8),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(12.0),
              //             child: Image.asset(
              //               "assets/insta.jpeg",
              //               height: 32,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(width: 1),
              //     Expanded(
              //       child: GestureDetector(
              //         onTap: () {
              //           // This function will be triggered when the Facebook icon is tapped
              //           launchTwitterPage(); // You need to implement this function
              //         },
              //         child: Container(
              //           decoration: BoxDecoration(
              //             border: Border.all(
              //               color: const Color(0xFFE8ECF4),
              //             ),
              //             borderRadius: BorderRadius.circular(8),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(12.0),
              //             child: Image.asset(
              //               "assets/twitter.png",
              //               height: 32,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color.fromARGB(223, 5, 119, 106),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
