import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
));

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomeState();
}

class _HomeState extends State<Homepage> {
  int crtlevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text(
          "My Details",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          crtlevel += 1;
          
        });

      },
      backgroundColor: Colors.red,
      child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
            
               backgroundImage: AssetImage("assets/menu.jpeg"),
                radius: 60.0,
              ),
            ),
            Divider(height: 90, color: Colors.grey[800]),
            const Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),

            const Text(
              "UBONGABASI AKPAETI",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),

            const SizedBox(height: 30.0),

            const Text(
              "CURRENT GROWTH LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),

             Text(
             " $crtlevel",
              style: const TextStyle(
                color:  Colors.yellow,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),

            const SizedBox(height: 30.0),

            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[500]),
                const SizedBox(width: 10.0),
                Text(
                  "conroyaldrick@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 17.0,
                    letterSpacing: 1.0,
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