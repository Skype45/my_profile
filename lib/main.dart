import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          centerTitle: true,
        ),
      ),

      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Card(
              color: const Color(0xFF1E1E1E),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),

              child: Padding(
                padding: const EdgeInsets.all(30),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    // Profile Image
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          AssetImage('assets/profile.jpg'),
                    ),

                    const SizedBox(height: 25),

                    // Name
                    const Text(
                      "Muhammad Fahimuddin",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Info
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cake, color: Colors.orange),
                        SizedBox(width: 10),
                        Text(
                          "5 March 2004",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,
                            color: Colors.redAccent),
                        SizedBox(width: 10),
                        Text(
                          "Pahang",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // Contact Icons
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.email,
                            color: Colors.red,
                            size: 35,
                          ),
                        ),

                        const SizedBox(width: 10),

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.green,
                            size: 35,
                          ),
                        ),

                        const SizedBox(width: 10),

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // Quote Card
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius:
                            BorderRadius.circular(20),
                      ),

                      child: const Text(
                        '“مَنْ جَدَّ وَجَدَ”',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}