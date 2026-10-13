import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 6),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )]
                  ),
                  child: IconButton(onPressed:(){},
                    icon: Icon(Icons.arrow_back_ios_new_outlined,),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Center(child: const Text("Log in",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 2,),
              Container(
                child: Center(
                  child: Text(
                    "Enter your email and password to securely access\nyour account and manage your services.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7A7D81),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Center(
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 15,
                        spreadRadius: 1,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                      prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 15,
                        spreadRadius: 1,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                      prefixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.grey),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: const Icon(Icons.visibility_off,color: Colors.grey,),
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.only(left: 17,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: isRememberMe,
                            activeColor: Colors.green,
                            onChanged: (value){}),
                        const Text("Remember me",style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                    const Text("Forget Password",style: TextStyle(fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 47,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(child: const Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Container(
                        child: const Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                    const Text("  Sign Up here",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 25,),
              Center(child: Text("Or Continue with Account",style: TextStyle(color: Colors.grey),)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 131),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        width: 35,
                        height: 37,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17)
                        ),
                        child: Image(image: AssetImage("assets/facebook.png"),
                        )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Image(image: AssetImage("assets/google.png",),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Container(
                        width: 35,
                        height: 33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Image(image: AssetImage("assets/apple-logo.png",),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}