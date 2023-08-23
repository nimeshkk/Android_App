import 'package:flutter/material.dart';

class PLYMOUTH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plymouth Category'),
      ),
      body: Center(
        child: Text('Plymouth Category Screen Content'),
      ),
    );
  }
}

class UGC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UGC Category'),
      ),
      body: Center(
        child: Text('UGC Category Screen Content'),
      ),
    );
  }
}

class BUSINESS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // ... (app bar configuration)
          ),
      body: Container(
        // ... (container decoration and other widgets)
        child: Center(
          child: Column(
            // ... (other children)
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PLYMOUTH()),
                  );
                },
                child: Text('Plymouth'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => UGC()),
                  );
                },
                child: Text('UGC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: BUSINESS(),
    ),
  );
}
