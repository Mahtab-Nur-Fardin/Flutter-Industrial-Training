import 'package:flutter/material.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.black,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('ID Card',style: TextStyle(color: Colors.white),),
      ),
      body:

      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(color: Colors.green[900],

                    ),
                    height: 300,
                    width: 500,
                    child: Column(
                      children: [
                        Image.asset('assets/images/logo.png',
                        height: 180,
                        width: 180),
                        const Text('ISLAMIC UNIVERSITY OF TECHNOLOGY',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18, color: Colors.white
                            )
                        )
                      ],
                    ),
                  ),
                    Positioned(
                      bottom: -50,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2.0
                            )
                          ),
                            child: Image.asset('assets/images/user.jpeg',)),
                      ),
                    ),
                ],
              ),
                 Spacer(),
                 const SizedBox(
                    height: 30,
                    child:

                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.key),
                        Text('Student ID', style: TextStyle(fontSize: 16),),
                      ],
                    )
                ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green[900]
                ),
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                child: const SizedBox(
                    height: 30,
                    child:

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.circle,color: Colors.indigo),
                        Text('190041112',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                        ),
                      ],
                    )
                ),
              ),
              const SizedBox(
                  height: 30,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_2_outlined),
                      Text('Student Name', style: TextStyle(fontSize: 16),)
                    ],
                  )
              ),
              const SizedBox(
                  height: 30,
                  child: Text('Mahtab Nur Fardin',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                ),
                const SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.school_rounded),
                        Text(' Program ', style: TextStyle(fontSize: 16),),
                        Text('BSc in CSE',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    )
                ),
                const SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.group),
                        Text(' Department of ', style: TextStyle(fontSize: 16)),
                        Text('CSE',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                      ],
                    )
                ),
                const SizedBox(
                  height: 30,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_sharp),
                      Text('Bangladesh',
                          style: TextStyle( fontSize: 16)),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 420,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                  ),
                  //padding: EdgeInsets.symmetric(horizontal:120, vertical: 5),
                  child: Text('A subsidiary organ of OIC', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),)
                ),

            ],
          ),
      ),
 );
  }
}
