import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyBio(),
    );
  }
}

// CREATE MYBIO CLASS / WIDGET

class MyBio extends StatefulWidget {
  const MyBio({super.key});

  @override
  State<MyBio> createState() => _MyBioState();
}

class _MyBioState extends State<MyBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(244, 67, 54, 1),
        leading: const Icon(
          Icons.dashboard,
          color: Colors.white,
        ),
        title: const Text('My Profile', 
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: const [
          Icon(
            Icons.notifications_on_outlined, 
          color: Colors.white,
          ),
        ],
        elevation: 5.0,
        ),
        body:  Padding(
          padding:  const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                height: 50.0,
                width: 80.0,
                child:  const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Name', 
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
                  ),
                  ),
              ),
           
                const Text('Hannah Duah',
                style: TextStyle(
                fontSize: 18.0, 
                fontWeight: FontWeight.normal,
                ),  
                ),
                 Text('Interests:'),
                Text('Flutter'),
                 Text('Level of Knowledge:'),
                Text('Beginner'),
            ],
          ),
        ),
    );
  }
}


