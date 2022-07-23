import 'package:brunet/HomeScreen/Pages/homeview.dart';
import 'package:brunet/HomeScreen/Pages/myorder.dart';
import 'package:brunet/HomeScreen/Pages/myaccount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  List<Widget> pages = <Widget>[];

  @override
  void initState() {
    pages
      ..add(const HomeView())
      ..add(const MyOrder())
      ..add(const MyAccount());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      drawer: Drawer(
        backgroundColor: Colors.brown[500],
        child: ListView(
          children: [
            ListTile(
              onTap: (){},
              autofocus: true,
              title:const Text("Customer Service",style: TextStyle(color: Colors.white),),
              leading:const Icon(Icons.room_service_outlined),
            ),
            ListTile(
              onTap: (){},
              autofocus: true,
              title:const Text("Language",style: TextStyle(color: Colors.white),),
              leading:const Icon(Icons.language_outlined),
            ),
            ListTile(
              onTap: (){},
              autofocus: true,
              title:const Text("Help",style: TextStyle(color: Colors.white),),
              leading:const Icon(Icons.help),
            ),
            ListTile(
              onTap: (){},
              autofocus: true,
              title:const Text("LogOut",style: TextStyle(color: Colors.white),),
              leading:const Icon(Icons.logout),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("B R U N E T",
          style: GoogleFonts.roboto(fontWeight: FontWeight.normal,fontSize: 20),
        ),
        backgroundColor: Colors.brown[900],
        actions: [
          IconButton(
              onPressed: (){},
              icon:const Icon(Icons.notifications_active)
          ),
        ],
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF3E2723),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "My Order"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
