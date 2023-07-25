import 'package:campus_connect_app/pages/add_pages/add_item2.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToAddItem2,
        label: Text('Add Item'),
      ),
    );
  }

  void navigateToAddItem2() {
    final route = MaterialPageRoute(
      builder: (context) => AddItem2(),
    );
    Navigator.push(context, route);
  }
}


