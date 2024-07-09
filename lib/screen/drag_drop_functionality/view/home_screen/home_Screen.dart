import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Match Game'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Draggable(
                data: 'Dipali',
                feedback: Material(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.redAccent),
                    child: const Text('Dipali'),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.teal),
                  child: const Text('Dipali'),
                ),
              ),
              const Spacer(),
              DragTarget(

                onAcceptWithDetails: (details) {
                  if(details.data == 'Dipali')
                  {
                    color = Colors.cyan;
                  }
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(color: color),
                    child: const Text('Coding'),
                  );
                },
              )
            ],
          ),
        ));
  }
}


Color color = Colors.purpleAccent;