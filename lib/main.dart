/* import 'package:flt1/widgets/tips_calculator.dart'; */
/* import 'package:flt1/widgets/password_widget.dart'; */
import 'package:flt1/services/routing.dart';
import 'package:flutter/material.dart';

// widget avec etat

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: Routing.getRoutes().routerDelegate,
      routeInformationParser: Routing.getRoutes().routeInformationParser,
      title: 'Flutter App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      //home: const HomeScreen(),
    );
  }
}

/*
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 52, 52, 51),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* PasswordWidget(), */
            TipsCalculator(),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.only(top: 50, bottom: 50, left: 50),
            children: [
              const SizedBox(
                height: 50,
              ),
              DrawerHeader(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 1),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.guim.co.uk/img/media/d25d8fc3406bc569551977f281001d0b4b560516/0_402_3058_1834/master/3058.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=2c59be2fbe5134b71d4943ec5ad56338')),
                ),
                child: Text(''),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: const Text('John Lock'),
                textColor: Colors.white,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                title: const Text('John@gmail.com'),
                textColor: Colors.white,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: const Text('01 54 12 10 89'),
                textColor: Colors.white,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.link,
                  color: Colors.blue,
                ),
                title: const Text('http://example.org'),
                textColor: Colors.white,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('My Résumé'),
            centerTitle: false,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ))
            ]),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),

            /* decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1651237031934-4c1c78b9f1ba'),
              fit: BoxFit.cover,
            ),
          ),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 5,
                        ),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i.guim.co.uk/img/media/d25d8fc3406bc569551977f281001d0b4b560516/0_402_3058_1834/master/3058.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=2c59be2fbe5134b71d4943ec5ad56338")))),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "John Lock",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "John@gmail.com",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "01 23 45 67 89",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "https://example.org",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
*/
