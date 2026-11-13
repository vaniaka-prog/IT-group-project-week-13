import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  final Color yellow = const Color(0xFFF5E9A8);
  final Color pink = const Color(0xFFE9BFC0);
  final Color blue = const Color(0xFFC9E9E9);

  final List<Map<String, dynamic>> assignments = [
    {
      'subject': 'MATH\nHOMEWORK',
      'deadline': '06/10/26',
      'status': 'DONE',
      'color': Color(0xFF8BD83D),
    },
    {
      'subject': 'BIOLOGY\nHOMEWORK',
      'deadline': '10/10/26',
      'status': 'NOT YET',
      'color': Color(0xFFE75B52),
    },
    {
      'subject': 'CHEMISTRY\nHOMEWORK',
      'deadline': '15/10/26',
      'status': 'DONE',
      'color': Color(0xFF8BD83D),
    },
    {
      'subject': 'IT PROJECT',
      'deadline': '13/10/26',
      'status': 'ON PROGRESS',
      'color': Color(0xFFF5D34B),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,

      body: SafeArea(
        child: Column(
          children: [

            // HEADER
            Container(
              width: double.infinity,
              color: yellow,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'HOME\nDASHBOARD',
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      height: 1.05,
                    ),
                  ),

                  const Text(
                    'Neva',
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // TABLE HEADER
            Container(
              height: 65,
              color: pink,
              child: Row(
                children: [
                  headerCell("TODAY'S\nASSIGNMENT"),
                  headerCell("UPCOMING\nDEADLINE"),
                  headerCell("TASK\nCOMPLETED"),
                ],
              ),
            ),

            // ASSIGNMENT LIST
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 5,
                ),
                itemCount: assignments.length,
                itemBuilder: (context, index) {

                  final task = assignments[index];

                  return SizedBox(
                    height: 90,
                    child: Row(
                      children: [

                        // SUBJECT
                        Expanded(
                          child: Center(
                            child: Text(
                              task['subject'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'Georgia',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        // DEADLINE
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              border: Border(
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                task['deadline'],
                                style: const TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // STATUS
                        Expanded(
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: task['color'],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                task['status'],
                                style: const TextStyle(
                                  fontFamily: 'Georgia',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  );
                },
              ),
            ),

            // BOTTOM NAVIGATION
            Container(
              height: 75,
              color: const Color(0xFFF4F0E7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  navItem(Icons.circle_outlined, 'Home', 0),
                  navItem(Icons.change_history, 'To-do', 1),
                  navItem(Icons.star, 'Focus', 2),
                  navItem(Icons.square, 'Progress', 3),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  // TABLE HEADER CELL
  Widget headerCell(String title) {
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(color: Colors.black),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Georgia',
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  // BOTTOM NAVIGATION ITEM
  Widget navItem(IconData icon, String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
            color: selectedIndex == index
                ? Colors.black
                : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: selectedIndex == index
                  ? Colors.black
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}),
    );
  }
}
