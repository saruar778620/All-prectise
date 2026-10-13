import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

const List tabBars = ['All', 'Missed', 'Contacts', 'Non-Spam', 'Spam'];


class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Color(0xFF1B1B24),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 58,
                  decoration: BoxDecoration(
                    color: Color(0xFF282832),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.menu, size: 28,color: Colors.white70,),
                      SizedBox(width: 22,),
                      Expanded(
                        child: Text(
                          "Search contacts",
                          style: TextStyle(fontSize: 18,color: Colors.white70),
                        ),
                      ),
                      const Icon(Icons.mic_none, size: 27,color: Colors.white70,)
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        ...tabBars.map((tabLabel){
                          return
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomTabBar(isSelected: selectedIndex == tabBars.indexOf(tabLabel), onTap: (){
                                selectedIndex = tabBars.indexOf(tabLabel);
                                setState(() {});
                              }, text: tabLabel),
                            );}),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Text("Favourites",style: TextStyle(color: Color(0xFFB5C4FF),fontSize: 17),),
                      ),
                      Icon(Icons.keyboard_arrow_down,color: Color(0xFFB5C4FF),),

                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFF282832),
                          ),
                          child: Text("View contacts",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17,),

                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 9),
                  child: const Text("Today",style: TextStyle(color: Color(0xFFB5C4FF),fontSize: 16),),
                ),

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12)
                          )
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFF393943),
                          backgroundImage: AssetImage("assets/pic4.jpg"),
                        ),
                        title: Text("Romjan Ali Vai",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 18,
                              color: Colors.white70,
                            ),
                            Text(
                              "Bangladesh . 5:52 pm",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFF393943),
                            child: Center(child: Text("C",style: TextStyle(color: Colors.white,fontSize: 25),))
                        ),
                        title: Text("Coyti Apa",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 18,
                              color: Colors.white70,
                            ),
                            Text(
                              "Bangladesh . 3:12 am",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFF393943),
                          backgroundImage: AssetImage("assets/pic3.png"),
                        ),
                        title: Text("Saruar",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 18,
                              color: Colors.white70,
                            ),
                            Text(
                              "Bangladesh . 1:10 pm",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFF393943),
                            child: Center(child: Text("R",style: TextStyle(color: Colors.white,fontSize: 25),))
                        ),
                        title: Text("Rihan Islam",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 18,
                              color: Colors.white70,
                            ),
                            Text(
                              "Bangladesh . 10:49 am",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12)
                          )
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFF393943),
                          backgroundImage: AssetImage("assets/pic4.jpg"),
                        ),
                        title: Text("Romjan Ali Vai",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_missed,
                              size: 18,
                              color: Colors.red,
                            ),
                            Text(
                              "Bangladesh . 5:52 pm",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 9),
                  child: const Text("Yesterday",style: TextStyle(color: Color(0xFFB5C4FF),fontSize: 16),),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12)
                          )
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFF393943),
                            child: Center(child: Text("M",style: TextStyle(color: Colors.white,fontSize: 25),))
                        ),
                        title: Text("Mehedi Hasan",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_missed_outgoing,
                              size: 18,
                              color: Colors.red,
                            ),
                            Text(
                              "Bangladesh . 12.30 pm",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFF393943),
                            child: Center(child: Text("R",style: TextStyle(color: Colors.white,fontSize: 25),))
                        ),
                        title: Text("Romjan Ali Vai",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 18,
                              color: Colors.white70,
                            ),
                            Text(
                              "Bangladesh . 5:52 pm",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF45495F),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)
                          )
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFF393943),
                            child: Center(child: Text("R",style: TextStyle(color: Colors.white,fontSize: 25),))
                        ),
                        title: Text("Romjan Ali Vai",style: TextStyle(color: Colors.white,fontSize: 16),),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 18,
                              color: Colors.white70,
                            ),
                            Text(
                              "Bangladesh . 5:52 pm",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.call_outlined,color: Colors.white70,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: const Color(0xFF14141A),

          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: Colors.white, // Selected label color
                );
              }

              return const TextStyle(
                color: Colors.white70, // Unselected label color
              );
            },
          ),

          destinations: const [
            Padding(
              padding: EdgeInsets.only(left: 38),
              child: NavigationDestination(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 38),
              child: NavigationDestination(
                icon: Icon(Icons.dialpad_rounded, color: Colors.white70),
                label: 'Keypad',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CustomTabBar extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final bool isSelected;
  const CustomTabBar({super.key, required this.onTap, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12,)
            ),
            backgroundColor: isSelected ?  Color(0xFF45495F) : const Color(0xFF1B1B24),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 7,
            ),
            side: BorderSide(
                color: Colors.grey.shade600
            )
        ),
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white),
        )
    );
  }
}