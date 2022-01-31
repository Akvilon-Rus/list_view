import 'package:flutter/material.dart';
void main () {
  runApp(const ListViewScreen());
}
class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          body:MyStatefulWidget()
      ),

    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Item $index"),
          selected:index == _selectedIndex,
          onTap: () {
            setState(() {
              _selectedIndex=index;
            });
          },
        );
      },
    );
  }
}
