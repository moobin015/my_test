import 'package:flutter/material.dart';

class NewTest extends StatefulWidget {
  const NewTest({super.key});

  @override
  State<NewTest> createState() => _NewTestState();
}

class _NewTestState extends State<NewTest> {
  TextEditingController _tfcontoler = TextEditingController(text: '1');

  List<WaterData> waterdataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewTest'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Glasses'),
          Text('12'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  controller: _tfcontoler,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: _add,
                child: Text('Add'),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10), child: Text('History'))
            ],
          ),
          SizedBox(height: 10),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (contex, index) {
                    return ListTile(
                      title: Text('Time'),
                      leading: Text('${index + 1}'),
                      subtitle: Text('Date'),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete)),
                    );
                  },
                  separatorBuilder: (contex, index) {
                    return Divider();
                  },
                  itemCount: 50))
        ],
      ),
    );
  }

  void _add() {
    if (_tfcontoler.text.isEmpty) {
      _tfcontoler.text = '1';
    }
    final int addglass = int.tryParse(_tfcontoler.text) ?? 1;
    WaterData waterData =
        WaterData(glassno: addglass, dateTime: DateTime.now());
    waterdataList.add(waterData);
    setState(() {});
  }
}

class WaterData {
  final int glassno;
  final DateTime dateTime;

  WaterData({required this.glassno, required this.dateTime});
}
