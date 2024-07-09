import 'package:flutter/material.dart';

import '../../../../utils/image_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Matching Game',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Column(
            children: List.generate(
                5,
                (index) => Draggable(
                    data: imageList1,
                    feedback: Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imageList[index]))),
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            imageList[index],
                          ),
                        ),
                      ),
                    ))),
          ),
          const Spacer(),
          Column(
            children: List.generate(
                5,
                (index) => DragTarget(
                      onAcceptWithDetails: (details) {
                        if (imageList == imageList1) {
                          // return
                        }
                      },
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imageList1[index]))),
                        );
                      },
                    )),
          )
        ],
      ),
    );
  }
}
