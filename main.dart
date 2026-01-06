import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(// #1 Root widget ng app: dito sine-set ang theme at first screen
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );  
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( 
    //#2 Scaffold - Main screen layout na nagbibigay ng basic structure ng page.
    appBar: AppBar(title: const Text('All Widgets')),
    //#3 AppBar - Top bar ng screen na nagpapakita ng title ng application at pwedeng gawing navigation bar para malagyan pa ng ibang fucntions.
    body: Center(  
      child: Container(  
        padding: const EdgeInsets.all(20),
        child: Column(  
          children: [
            Row(
            //#5 Row - Nagiging divider na nagbibigay ng horizontal line para kung sakaling may gustong ilagay na mga functions dito maa-align ito.   
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),
                //#4 Text('Flutter') - Ito ang nagpapakita ng text display katabi ng Icon. 
              ],
            ),
          ],
        ),
        //#6 Column - eto naman ang line na nag d-divide vertically.
      ),
      //#8 Container - dito ay pwede mong maayos kung ano mang format, size, and style ng mga bagay na nakapaloob dito.
    ),
    //#7 Center- ito ay ginagamit para mailagay sa gitna yung mga text or any elements na kailangan or gustong ilagay sa center ng app or screen.
  );
}