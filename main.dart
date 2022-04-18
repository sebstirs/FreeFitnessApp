import 'package:flutter/material.dart';
import 'package:myapp/page/WOOnePage.dart';
import 'package:myapp/page/WOTwoPage.dart';
import 'package:myapp/widget/tabbar_widget.dart';

void main() {
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
              padding: EdgeInsets.all(8),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          textStyle: TextStyle(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: TextStyle(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      child: const Text('Create Workout'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const CustomWorkoutOne()));
                      })),
              Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withOpacity(.5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black.withOpacity(.5),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      child: const Text('Create Workouts'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const CustomWorkoutTwo()));
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Push'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Push()));
                  })),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Pull'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Pull()));
                  })),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Legs'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Legs()));
                  })),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Day One'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const DayOne()));
                  })),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Day Two'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const DayTwo()));
                  })),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Day Three'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const DayThree()));
                  })),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Chest'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Chest()));
                  })),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Back()));
                  })),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Legs'),
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
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Shoulders'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Shoulders()));
                  })),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Arms'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Arms()));
                  })),
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
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
      body: ListView(
        children: [
          Container(child: Image.asset('assets/push.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
      body: ListView(
        children: [
          Container(child: Image.asset('assets/Pull.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
        title: const Text('Full Body Hybrid Day Three'),
      ),
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
        title: const Text('Full Body Hybrid Day Three'),
      ),
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
        title: const Text('Full Body Hybrid Day Three'),
      ),
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
        title: const Text('Full Body Hybrid Day Three'),
      ),
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
        title: const Text('Full Body Hybrid Day Three'),
      ),
      body: ListView(
        children: [
          Container(child: Image.asset('assets/squat.jpg')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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
                                  fontWeight: FontWeight.bold, fontSize: 20))),
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

class CustomWorkoutOne extends StatelessWidget {
  const CustomWorkoutOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Custom Workout One'),
        ),
        body: Stack(children: <Widget>[
          CustomWorkoutOne(),
        ]));
  }
}

class CustomWorkoutTwo extends StatelessWidget {
  const CustomWorkoutTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Custom Workout Two'),
        ),
        body: Container(
            child: Stack(children: [
          Center(
            child: Container(child: Image.asset('assets/Zen.jpg')),
          ),
          CustomWorkoutTwo(),
          Container(),
          Container(),
        ])));
  }
}
