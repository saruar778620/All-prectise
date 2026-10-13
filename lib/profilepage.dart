import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

        leading: Icon(
          Icons.arrow_back_ios_new_outlined,size: 23,
        ),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings,size: 25,color: Colors.black,),
          )],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/pic3.png"),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Positioned(
                      right: 9,
                      bottom: 8,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white
                            )
                        ),
                        child: Icon(Icons.camera_alt,size: 18,),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sarar Hossain",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("saruar@gmail.com",style: TextStyle(fontSize: 14,color: Colors.black54),),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Edit Profile",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.favorite_border,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Favourites",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.download_outlined,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Downloads",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),

            const Divider(
              color: Colors.black38,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.language,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Language",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.devices_outlined,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Display",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.phone_android_outlined,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Feed preference",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.credit_card_outlined,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Subscription",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),

            const Divider(
              color: Colors.black12,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.delete_outline,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Clear Cache",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.history,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Clear history",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right:50),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: const Icon(
                  Icons.logout,
                  color: Colors.black87,
                ),

                title: const Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}