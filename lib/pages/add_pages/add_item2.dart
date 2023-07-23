import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddItem2 extends StatefulWidget {
  const AddItem2({Key? key}) : super(key: key);

  @override
  State<AddItem2> createState() => _AddItem2State();
}

class _AddItem2State extends State<AddItem2> {
  TextEditingController titleController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item 2'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
            controller: detailsController,
            decoration: InputDecoration(
              labelText: 'Details',
            ),
            keyboardType: TextInputType.multiline,
            minLines: 3,
            maxLines: 5,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: submitData,
            child: Text('Submit'),
          )
        ],
      ),
    );
  }

  Future<void> submitData() async {
    final title = titleController.text;
    final details = detailsController.text;
    final body = {
      "title": title,
      "details": details,
      "is_completed": false
    };
    final url = "https://api.nstack.in/#/Todo/TodoController_create";
    final uri = Uri.parse(url);
    final response = await http.post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(body),
    );

    print(response);
  }
}
