import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'box',
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.alarm, color: Colors.red),
              const SizedBox(height: 40),
              const Text(
                '8 Tasks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Custom',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 5, right: 30, top: 5),
                child: LinearProgressIndicator(
                  value: 0.8,
                  color: Colors.red,
                  minHeight: 8,
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: [
                    section('Previous - Thu', [
                      taskItem('Meet Clients', true),
                      taskItem('Design Sprint', true),
                      taskItem('Icon Set Design for Mobile', true),
                      taskItem('HTML/CSS Study', true),
                    ]),
                    section('Previous - Fri', [
                      taskItem('Meet Clients', true),
                      taskItem('Design Sprint', true),
                      taskItem('Icon Set Design for Mobile', true),
                      taskItem('HTML/CSS Study', false),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget section(String title, List<Widget> tasks) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        ...tasks,
      ],
    );
  }

  Widget taskItem(String title, bool isChecked) {
    return ListTile(
      leading: Checkbox(
        value: isChecked,
        activeColor: Colors.red,
        onChanged: (bool? value) {},
      ),
      title: Text(title),
      trailing: const Icon(Icons.alarm, color: Colors.grey),
    );
  }
}
