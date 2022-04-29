import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'dart:async';
import 'package:path/path.dart';
//import 'package:myapp/WorkoutClass.dart';
//import 'package:myapp/dbwork.dart';
//import 'package:path_provider/path_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hermes: Fitness for All',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Hermes Fitness'),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.red,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.red,
              ])),
        ),
        Center(
          child: Container(child: Image.asset('assets/PullUp.jpg')),
        ),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 300,
              color: Colors.red.withOpacity(.5),
              child: const Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
            ),
            Container(
              // padding: const EdgeInsets.all(10),
              height: 50,
              width: 300,
              color: Colors.red.withOpacity(.5),
              child: TextButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const StartWorkout(),
                            ))
                      },
                  child: const Text(
                    "Start Workout",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
            )
          ],
        )),
      ]),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text('Navigator', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class StartWorkout extends StatelessWidget {
  const StartWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Start Workout'),
      ),
      body: Center(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          Center(
              child: Container(
            child: Image.asset(
              'assets/pushup.jpg',
            ),
          )),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(5),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withOpacity(.5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Push Pull Legs'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const PushPullLegs()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withOpacity(.5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('3 Day Hybrid'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ThreeDayHybrid()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withOpacity(.5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                      child: const Text('Bro Split'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const BroSplit()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withOpacity(.5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      child: const Text('Calisthenics'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Calisthenics()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withOpacity(.5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      child: const Text('Create Workout'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const WorkoutOne()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withOpacity(.5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      child: const Text('Create Workouts'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const WorkoutOne()));
                      })),
            ],
          ),
        ]),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text('Navigator', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class PushPullLegs extends StatelessWidget {
  const PushPullLegs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Push Pull Legs'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text(
                        'Push',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Push()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text(
                        'Pull',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Pull()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text(
                        'Legs',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Legs()));
                      })),
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class ThreeDayHybrid extends StatelessWidget {
  const ThreeDayHybrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Full Hybrid Workout'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.red
                ])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Day One',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const DayOne()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Day Two',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const DayTwo()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Day Three',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DayThree()));
                      })),
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class BroSplit extends StatelessWidget {
  const BroSplit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Bro Split'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Chest',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Chest()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Back',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Back()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Legs',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const BroSplitLegs()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Shoulders',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Shoulders()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      child: const Text('Arms',
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Arms()));
                      })),
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Calisthenics extends StatelessWidget {
  const Calisthenics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Calisthenics'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/Cali.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('DB Cross Curls')),
                          Container(child: const Text('Dips')),
                          Container(child: const Text('Flat Plate Curl')),
                          Container(child: const Text('Tricept Push Down')),
                          Container(child: const Text('BB Curl')),
                          Container(child: const Text('Skull Crusher')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('Max')),
                            Container(child: const Text('Max')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Push extends StatelessWidget {
  const Push({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Push'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          Center(
            child: ListView(
              padding: const EdgeInsets.only(top: 100),
              children: [
                Container(child: Image.asset('assets/push.jpg')),
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                child: const Text('Exercise',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('Flat Bench Press')),
                            Container(child: const Text('Shoulder Press')),
                            Container(child: const Text('Dips')),
                            Container(child: const Text('Tricep Push Down')),
                            Container(child: const Text('DB Lat Raise')),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Sets',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('5')),
                            Container(child: const Text('3')),
                            Container(child: const Text('3')),
                            Container(child: const Text('3')),
                            Container(child: const Text('3')),
                          ],
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: const Text('Reps',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20))),
                              Container(padding: const EdgeInsets.all(10)),
                              Container(child: const Text('10')),
                              Container(child: const Text('12')),
                              Container(child: const Text('Max')),
                              Container(child: const Text('15')),
                              Container(child: const Text('15')),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Pull extends StatelessWidget {
  const Pull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Pull'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/Pull.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Deadlift')),
                          Container(child: const Text('Pull Ups')),
                          Container(child: const Text('BB Rows')),
                          Container(child: const Text('Farmer Carries')),
                          Container(child: const Text('DB Curls')),
                          Container(child: const Text('Face Pulls')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('5')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('6')),
                          Container(child: const Text('5')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('5')),
                            Container(child: const Text('Max')),
                            Container(child: const Text('12')),
                            Container(child: const Text('30 ft')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Legs extends StatelessWidget {
  const Legs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Legs'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/squat.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Squat')),
                          Container(child: const Text('Good Mornings')),
                          Container(child: const Text('Single Leg Press')),
                          Container(child: const Text('Calf Raise')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('5')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('5')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('5')),
                            Container(child: const Text('20')),
                            Container(child: const Text('15')),
                            Container(child: const Text('20')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class DayOne extends StatelessWidget {
  const DayOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Full Body Hybrid Day One'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/shoudlerpress.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Reverse Lunges')),
                          Container(child: const Text('Military Press')),
                          Container(child: const Text('DB Delt Raise')),
                          Container(child: const Text('DB Rear Delt Raise')),
                          Container(child: const Text('DB Shrugs')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('4')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('12')),
                            Container(child: const Text('12')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class DayTwo extends StatelessWidget {
  const DayTwo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Full Body Hybrid Day Two'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/squat2.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('DeadLift')),
                          Container(child: const Text('Incline Bench Press')),
                          Container(child: const Text('Single Arm Cable Row')),
                          Container(child: const Text('Lat Pull Down')),
                          Container(child: const Text('DB Cross Curl')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('5')),
                          Container(child: const Text('3')),
                          Container(child: const Text('4')),
                          Container(child: const Text('4')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('5')),
                            Container(child: const Text('12')),
                            Container(child: const Text('12')),
                            Container(child: const Text('10')),
                            Container(child: const Text('15')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class DayThree extends StatelessWidget {
  const DayThree({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Full Body Hybrid Day Three'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/chest.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Squat')),
                          Container(child: const Text('Flat Bench Press')),
                          Container(child: const Text('DB Row')),
                          Container(child: const Text('Tricept Push Down')),
                          Container(child: const Text('Upper Chest Fly')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('4')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('10')),
                            Container(child: const Text('10')),
                            Container(child: const Text('12')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Chest extends StatelessWidget {
  const Chest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Chest'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/chestflies.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Flat Bench Press')),
                          Container(child: const Text('Decline Bench Press')),
                          Container(child: const Text('DB Flys')),
                          Container(child: const Text('Dips')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('4')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('10')),
                            Container(child: const Text('10')),
                            Container(child: const Text('12')),
                            Container(child: const Text('Max')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Back'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/pull2.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Seated Row')),
                          Container(child: const Text('Pull Ups')),
                          Container(child: const Text('Lat Pull Down')),
                          Container(child: const Text('DB Rear Delt Fly')),
                          Container(child: const Text('Face Pull')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('4')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('12')),
                            Container(child: const Text('Max')),
                            Container(child: const Text('12')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class BroSplitLegs extends StatelessWidget {
  const BroSplitLegs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Legs'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/deadlift.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Deadlift')),
                          Container(child: const Text('Calf Raise')),
                          Container(child: const Text('Pistol Squat')),
                          Container(child: const Text('Hip Thrust')),
                          Container(child: const Text('Hanging Knee Raise')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('5')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('5')),
                            Container(child: const Text('20')),
                            Container(child: const Text('Max')),
                            Container(child: const Text('10')),
                            Container(child: const Text('Max')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Shoulders extends StatelessWidget {
  const Shoulders({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Shoulders'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/shoulders.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('Shoulder Press')),
                          Container(child: const Text('DB Delt Raise')),
                          Container(child: const Text('DB Rear Delt Raise')),
                          Container(child: const Text('Upright Row')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('4')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('12')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('12')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class Arms extends StatelessWidget {
  const Arms({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Arms'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.red,
                ])),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100),
            children: [
              Container(child: Image.asset('assets/arms.jpg')),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Exercise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('DB Cross Curls')),
                          Container(child: const Text('Dips')),
                          Container(child: const Text('Flat Plate Curl')),
                          Container(child: const Text('Tricept Push Down')),
                          Container(child: const Text('BB Curl')),
                          Container(child: const Text('Skull Crusher')),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text('Sets',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          Container(padding: const EdgeInsets.all(10)),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                          Container(child: const Text('3')),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text('Reps',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))),
                            Container(padding: const EdgeInsets.all(10)),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('15')),
                            Container(child: const Text('Max')),
                            Container(child: const Text('Max')),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Navigator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ));
              }),
          ListTile(
              title: const Text('Start Workout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const StartWorkout(),
                    ));
              }),
        ],
      )),
    );
  }
}

class WorkoutOne extends StatefulWidget {
  const WorkoutOne({Key? key}) : super(key: key);

  @override
  State<WorkoutOne> createState() => _WorkoutOneState();
}

class _WorkoutOneState extends State<WorkoutOne> {
  final dbHelper = DatabaseHelper.instance;
  List<Exercise> exercises = [];
  List<Exercise> exercisesByName = [];
//controllers used in insert operation UI
  TextEditingController nameController = TextEditingController();
  TextEditingController setsController = TextEditingController();
  TextEditingController repsController = TextEditingController();
//controllers used in update operation UI
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController setsUpdateController = TextEditingController();
  TextEditingController repsUpdateController = TextEditingController();
//controllers used in delete operation UI
  TextEditingController idDeleteController = TextEditingController();
//controllers used in query operation UI
  TextEditingController queryController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _showMessageInScaffold(String message) {
    _scaffoldKey.currentState?.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.red,
            bottom: const TabBar(
              indicatorWeight: 5,
              indicatorColor: Colors.red,
              //indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.all(10),
              tabs: [
                Tab(
                  text: "Insert",
                ),
                Tab(
                  text: "View",
                ),
                Tab(
                  text: "Query",
                ),
                Tab(
                  text: "Update",
                ),
                Tab(
                  text: "Delete",
                ),
              ],
            ),
            title: const Text('Free Fitness App'),
          ),
          body: Stack(
            children: [
              Opacity(
                opacity: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.red,
                        Colors.white,
                        Colors.white,
                        Colors.red,
                      ])),
                ),
              ),
/*
Image will be added later
              Opacity(
                opacity: 0.5,
                child: Center(
                    child: Container(child: Image.asset('assets/background.jpg')),
                    ),
              ),
*/
              TabBarView(
                children: [
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Exercise Name',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: setsController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Sets',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: repsController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Reps',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: const Text('Insert Exercise Details'),
                          onPressed: () {
                            String name = nameController.text;
                            int sets = int.parse(setsController.text);
                            int reps = int.parse(repsController.text);
                            _insert(name, sets, reps);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // Background color
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: exercises.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == exercises.length) {
                          return ElevatedButton(
                            child: const Text('Refresh'),
                            onPressed: () {
                              setState(() {
                                _queryAll();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color
                            ),
                          );
                        }
                        return Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              '[${exercises[index].id}] ${exercises[index].name} - ${exercises[index].sets} sets - ${exercises[index].reps} reps',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: queryController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Exercise Name',
                            ),
                            onChanged: (text) {
                              if (text.length >= 2) {
                                setState(() {
                                  _query(text);
                                });
                              } else {
                                setState(() {
                                  exercisesByName.clear();
                                });
                              }
                            },
                          ),
                          height: 100,
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: exercisesByName.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 50,
                                margin: const EdgeInsets.all(2),
                                child: Center(
                                  child: Text(
                                    '[${exercisesByName[index].id}] ${exercisesByName[index].name} - ${exercisesByName[index].sets} sets - ${exercisesByName[index].reps} reps',
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: idUpdateController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Exercise id',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: nameUpdateController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Exercise Name',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: setsUpdateController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Sets',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: repsUpdateController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Reps',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: const Text('Update Exercise Details'),
                          onPressed: () {
                            int id = int.parse(idUpdateController.text);
                            String name = nameUpdateController.text;
                            int sets = int.parse(setsUpdateController.text);
                            int reps = int.parse(repsUpdateController.text);
                            _update(id, name, sets, reps);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // Background color
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: idDeleteController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Exercise id',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: const Text('Delete'),
                          onPressed: () {
                            int id = int.parse(idDeleteController.text);
                            _delete(id);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // Background color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  void _insert(name, sets, reps) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnsets: sets,
      DatabaseHelper.columnreps: reps
    };
    Exercise exercise = Exercise.fromJson(row);
    final id = await dbHelper.insert(exercise);
    _showMessageInScaffold('inserted row id: $id');
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    exercises.clear();
    for (var row in allRows) {
      exercises.add(Exercise.fromJson(row));
    }
    _showMessageInScaffold('Query done.');
    setState(() {});
  }

  void _query(name) async {
    final allRows = await dbHelper.queryRows(name);
    exercisesByName.clear();
    for (var row in allRows) {
      exercisesByName.add(Exercise.fromJson(row));
    }
  }

  void _update(id, name, sets, reps) async {
    // row to update
    Exercise exercise = Exercise(name: name, id: id, sets: sets, reps: reps);
    final rowsAffected = await dbHelper.update(exercise);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}
//import 'package:myapp/dbwork.dart';

class Exercise {
  final int? id;
  final String name;
  final int sets;
  final int reps;

  const Exercise(
      {this.id, required this.name, required this.sets, required this.reps});

  /*factory Exercise.fromMap(Map<String, dynamic> map)=> Exercise(
    id : map['id'],
    name : map['name'],
    sets : map['sets'],
  );
  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnsets: sets,
    };
  }*/
  Exercise copy({
    int? id,
    String? name,
    int? sets,
    int? reps,
  }) =>
      Exercise(
        id: id ?? this.id,
        name: name ?? this.name,
        sets: sets ?? this.sets,
        reps: reps ?? this.reps,
      );

  Exercise.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        sets = json['sets'],
        reps = json['reps'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'sets': sets,
        'reps': reps,
      };
}

class DatabaseHelper {
  static const _databaseName = "Exercise.db";

  static const table = 'Exercisetable';

  static const columnId = 'id';
  static const columnName = 'name';
  static const columnsets = 'sets';
  static const columnreps = 'reps';

  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB(_databaseName);
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // SQL code to create the database table
  Future _createDB(Database db, int version) async {
    await db.execute('''
CREATE TABLE $table ( 
  $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
  $columnName TEXT NOT NULL,
  $columnsets INTEGER NOT NULL,
  $columnreps INTEGER NOT NULL
  )
''');
  }

  // Helper methods

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> insert(Exercise Exercise) async {
    Database db = await instance.database;
    return await db.insert(table,
        {'name': Exercise.name, 'sets': Exercise.sets, 'reps': Exercise.reps});
  }

  // All of the rows are returned as a list of maps, where each map is
  // a key-value list of columns.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  // Queries rows based on the argument received
  Future<List<Map<String, dynamic>>> queryRows(name) async {
    Database db = await instance.database;
    return await db.query(table, where: "$columnName LIKE '%$name%'");
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int?> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  Future<int> update(Exercise Exercise) async {
    Database? db = await instance.database;
    int id = Exercise.toJson()['id'];
    return await db.update(table, Exercise.toJson(),
        where: '$columnId = ?', whereArgs: [id]);
  }

  // Deletes the row specified by the id. The number of affected rows is
  // returned. This should be 1 as long as the row exists.
  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }
}
