import 'package:demo_sharedpereference/main.dart';
import 'package:demo_sharedpereference/sharedpereference.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
                controller: textcontroller,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: () async {
                      getval();
                    },
                    child: const Text('Get Data'),
                  ),
                  MaterialButton(
                    color: Colors.brown,
                    onPressed: () {
                      setDate(textcontroller.text.toString());
                    },
                    child: Text('Set Data'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Switch.adaptive(
                    value: isvisible,
                    onChanged: (value) {
                      setState(() {
                        setVisible(value);
                      });
                    },
                  ),
                  Text(data),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
