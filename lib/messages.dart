import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final primaryColor = Color.fromARGB(190, 1, 34, 54);

  Widget _buildList() => ListView(
        // name is a listTile widget which is defined below
        children: [
          name('debora', 'stroher'),
          name('gabriel', 'medeiros'),
          name('rafael', 'vargas'),
          name('julia', 's2'),
          name('debzera', 'jr'),
          const Divider(),
          name('deb', 'zera'),
          name('deb', 'ora'),
          name('Chaitanya', ' kumar'),
          name('Rio', 'St'),
          name('debora', 'stroher'),
          name('gabriel', 'medeiros'),
          name('rafael', 'vargas'),
          name('julia', 's2'),
          name('debzera', 'jr'),
        ],
      );

// name is a function returning ListTile widget
  ListTile name(String firstName, String lastName) => ListTile(
        title: Text(firstName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(lastName),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue[500],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Center(
          child: Text('Messages', textAlign: TextAlign.center),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: Colors.transparent,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )),
                child: _buildList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: (_incrementCounter),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
