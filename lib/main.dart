import 'package:flutter/material.dart';
import 'package:project/MyAccountDosen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile UI',
      theme: ThemeData(
      ),
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 84, 40),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/Profile-dosen.jpg'),
            ),
          ),
          const SizedBox(height: 30),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              title: const Text('My account',
              style: TextStyle(color: Color.fromARGB(255, 55, 94, 151))
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 55, 94, 151),),
              onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Myaccountdosen()),
              );
                // Aksi untuk "My account"
              },
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              title: const Text('Logout', 
              style: TextStyle(color: Color.fromARGB(255, 55, 94, 151))),
              trailing: const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 55, 94, 151),),
              onTap: () {
                // Aksi untuk "Logout"
                
              },
            ),
          ),
        ],
      ),
      //bottomNavigationBar: const MyAppBottomNav(),
      bottomNavigationBar: BottomNavigationBar(items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Repository'),
          BottomNavigationBarItem(icon: Icon(Icons.upload_file_rounded), label: 'Request'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 239, 84, 40),
        unselectedItemColor: const Color(0xFF949494),
        currentIndex: 3,
        type: BottomNavigationBarType.fixed, // Fix label visibility
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () => 0,
        backgroundColor: const Color.fromARGB(255, 239, 84, 40),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, */
    );
  }
}