import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(189, 187, 182, 1)),
      ),

      home: const ListPage(),
    );
  }
}


class ListPage extends StatelessWidget {
  const ListPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('About Me'),
      ),

      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Content()),
            );
          },

          child: Container(
            padding: const EdgeInsets.all(50), 
            decoration: BoxDecoration(
              color: Colors.brown[300], 
              borderRadius: BorderRadius.circular(10), 
            ),
            
            child: const Text(
              'TAP HERE!',  
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}


class Content extends StatelessWidget {
  const Content ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get to know me!'),
      ),

      body: Column(
        children: [
          const SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[

              Expanded(
                child:  Image.asset(
                    'assets/foto/foto.jpg',
                    height: 400,
                ),
              ),

              Expanded(
                child:Container(
                  color: Colors.brown[300],
                  padding: const EdgeInsets.all(30),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Nama Lengkap
                      Text(
                        'Trista Avrilia Santoso',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),

                      // NRP
                      Text(
                        'NRP: 5026221008',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),

                      // Funfact
                      Text(
                        'Fun Fact: lebih suka masak daripada ngoding',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}