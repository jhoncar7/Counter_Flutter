import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
            ),
            Text(
              clickCounter > 0 ? 'Clicks' : 'Click',
              style: const TextStyle(fontSize: 26),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   clickCounter++;
          // });
          clickCounter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}


// ********* cuando no tiene estado

// class CounterScreen extends StatelessWidget {
//   const CounterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Counter Screen'),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               '10',
//               style: TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'Clicks',
//               style: TextStyle(fontSize: 26),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.plus_one),
//       ),
//     );
//   }
// }
