import 'package:flutter/material.dart';
class SchoolPage extends StatefulWidget {
  final String mobile;
  const SchoolPage({Key? key,required this.mobile}) : super(key: key);

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
           children: [
          const Text('Welcome',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          const Divider(
            thickness: 2,
            color: Colors.red,
          ),
          Text('Mobile number: ${widget.mobile}'),
            ],
          ),
        ),
      ),
    );
  }
}
