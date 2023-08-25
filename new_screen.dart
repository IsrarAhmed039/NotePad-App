import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  TextEditingController lstController = TextEditingController();
  List<String> lst = [];
  bool isAddingItem = false;

  addItem(String item) {
    setState(() {
      lst.add(item);
      isAddingItem = false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Task added successfully',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          duration: Duration(seconds: 2), // Set the duration of the SnackBar
        ),
      );
    });
  }

  removeItem(int index) {
    setState(() {
      lst.removeAt(index);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Task deleted successfully',
            style: TextStyle(color: Colors.red),
          ),
          duration: Duration(seconds: 2), // Set the duration of the SnackBar
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NotePad',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.deepPurple[900],
        elevation: 0, // No shadow
      ),
      body: Container(
        color: Colors.white, // Set the background color of the body
        child: Stack(
          children: [
            ListView.builder(
              itemCount: lst.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 3),
                  color: Colors.yellow,
                  child: ListTile(
                    // tileColor: Colors.green,
                    title: Text(lst[index]),
                    trailing: IconButton(
                      onPressed: () {
                        removeItem(index);
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ),
                );
              },
            ),
            if (isAddingItem)
              Positioned(
                bottom: 16,
                right: 16,
                child: Container(
                  color: Colors.green[800],
                  width: 500,
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            controller: lstController,
                            decoration: InputDecoration(
                              labelText: 'Enter Your Task',
                              labelStyle: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addItem(lstController.text);
                            lstController.clear();
                          },
                          child: Text('Add Task'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    isAddingItem = true;
                  });
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: NewScreen(),
    ),
  );
}
