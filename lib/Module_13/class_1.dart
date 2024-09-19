import 'package:flutter/material.dart';

class WatterTraker extends StatefulWidget {
  const WatterTraker({super.key});

  @override
  State<WatterTraker> createState() => _WatterTrakerState();
}

class _WatterTrakerState extends State<WatterTraker> {
  final TextEditingController _itmCounter = TextEditingController(text: '1');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tracker'),
        backgroundColor: Colors.blue,
        titleTextStyle:
            const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('12'),
          const Text("Glass's"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _itmCounter,
                ),
              ),
              const SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: const Text('Add')),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
                itemBuilder: (contex, index) {
                  return ListTile(
                    title: Text("Time"),
                    subtitle: Text("Date"),
                    leading: Text('1'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 3),
          ),
        ],
      ),
    );
  }
}
