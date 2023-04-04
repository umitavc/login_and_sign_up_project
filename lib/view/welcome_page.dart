import 'package:flutter/material.dart';

import '../controller/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;
   WelcomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/signup.png"), fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.15,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 55,
                  backgroundImage: AssetImage("assets/image/avatar2.png"),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: Column(
                    children:  [
                      const Text("Welcome", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                      Text(email, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                
                GestureDetector(
                  onTap: () {
                    AuthController.instance.logOut();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: w * 0.6,
                        height: h * 0.08,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blueAccent.shade100),
                        child: const Center(
                            child: Text(
                          "Sign out ",
                          style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: w * 0.2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}