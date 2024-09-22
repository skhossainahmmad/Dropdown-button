import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Button Example'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  // List of items in the dropdown menu
  List<String> _gender = ['One', 'Two', 'Three Sheikh Hossain ahmmad', 'Four'];
  String _value = "One"; // Initial value must be one of the items in the list

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _value,
      focusColor: Colors.lightBlue,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        bottomRight: Radius.circular(35),
      ),
      padding: EdgeInsets.all(10),
      iconSize: 24.0,
      elevation: 16,
      dropdownColor: Colors.blueGrey,
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      menuMaxHeight: 150,
      items: _gender.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value), // Use the value directly
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _value = newValue!;
        });
      },
    );
  }
}
