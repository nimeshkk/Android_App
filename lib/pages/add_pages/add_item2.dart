import 'package:flutter/material.dart';

class AddItem2 extends StatefulWidget {
  const AddItem2({Key? key}) : super(key: key);

  @override
  State<AddItem2> createState() => _AddItem2State();
}

class _AddItem2State extends State<AddItem2> {
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
            decoration: InputDecoration(
              labelText: 'Item Name',
            ),
            
          
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Item Details',
            ),
            keyboardType: TextInputType.multiline,
            minLines: 3,
            maxLines: 5,
          
          ),
          SizedBox(height:20),
          ElevatedButton(onPressed: (){},
           child:Text('Submit') )
        ],
      ),

    );
  }
}