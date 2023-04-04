import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_and_sign_up_project/controller/auth_controller.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
  var emailController =TextEditingController();
  var passwordController = TextEditingController();
    List images =[
      "g.png",
      "t.png",
      "f.png",
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow:[
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset:const  Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration:InputDecoration(
                        hintText: "Email",
                      prefixIcon: Icon(Icons.email, color: Colors.blueAccent.shade100,
                      ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0
                          )
                        ),
                        enabledBorder:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ) ,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                 Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow:[
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset:const  Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                    ),
                    child: TextField(
                      controller: passwordController,
                       obscureText: true,
                      decoration:InputDecoration(
                        hintText: "Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.blueAccent.shade100,
                      ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0
                          )
                        ),
                        enabledBorder:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ) ,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: (){
                      AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                    },
                    child: Center(
                      child: Container(
                        width: w * 0.6,
                        height: h * 0.08,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blueAccent.shade100),
                        child: const Center(
                            child: Text(
                          "Sign up ",
                          style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                 const  SizedBox(height: 10,),
                  Center(
                    child: RichText(text: TextSpan(
                      recognizer: TapGestureRecognizer()..onTap=() => Get.back(),
                      text: "Have an account?",
                      style: TextStyle(fontSize: 20, color: Colors.grey.shade500)
                    )),
                  ),
                  SizedBox(
                    height: w * 0.2,
                  ),
      
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Sing up using on the following method",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Wrap(
                      
                      children: List<Widget>.generate(3, (index) {
                  
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/image/"+images[index])
                            ),
                          ),
                        );
                  
                      }),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
