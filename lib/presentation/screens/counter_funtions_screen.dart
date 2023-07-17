import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          // leading: IconButton(
          //   icon: const Icon(Icons.refresh_rounded),
          //   onPressed: () {},
          // ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
                icon: Icons.refresh_outlined,
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                }),
            const SizedBox(
              height: 10,
            ),
            CustomButtom(
                icon: Icons.plus_one,
                onPressed: () {
                  setState(() {
                    clickCounter++;
                  });
                }),
            const SizedBox(height: 10),
            CustomButtom(
                icon: Icons.exposure_minus_1,
                onPressed: () {
                  if (clickCounter == 0) return;
                  setState(() {
                    clickCounter--;
                  });
                }),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 10,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}



// class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
//   int clickCounter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Counter Functions'),
//           // leading: IconButton(
//           //   icon: const Icon(Icons.refresh_rounded),
//           //   onPressed: () {},
//           // ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.refresh_rounded),
//               onPressed: () {
//                 setState(() {
//                   clickCounter = 0;
//                 });
//               },
//             )
//           ],
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 '$clickCounter',
//                 style:
//                     const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 clickCounter > 0 ? 'Clicks' : 'Click',
//                 style: const TextStyle(fontSize: 26),
//               )
//             ],
//           ),
//         ),
//         floatingActionButton: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             FloatingActionButton(
//               shape: const StadiumBorder(),
//               onPressed: () {
//                 clickCounter = 0;
//                 setState(() {});
//               },
//               child: const Icon(Icons.refresh_outlined),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             FloatingActionButton(
//               shape: const StadiumBorder(),
//               onPressed: () {
//                 // setState(() {
//                 //   clickCounter++;
//                 // });
//                 clickCounter++;
//                 setState(() {});
//               },
//               child: const Icon(Icons.plus_one),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             FloatingActionButton(
//               shape: const StadiumBorder(),
//               onPressed: () {
//                 if (clickCounter == 0) return;
//                 clickCounter--;
//                 setState(() {});
//               },
//               child: const Icon(Icons.exposure_minus_1),
//             ),
//           ],
//         ));
//   }
// }