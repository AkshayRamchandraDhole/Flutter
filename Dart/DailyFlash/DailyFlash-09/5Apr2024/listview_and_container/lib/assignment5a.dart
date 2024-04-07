import 'package:flutter/material.dart';
class TextSubmitWidget extends StatefulWidget {
  const TextSubmitWidget({super.key});
  @override
  _TextSubmitWidgetState createState() => _TextSubmitWidgetState();
}

class _TextSubmitWidgetState extends State<TextSubmitWidget> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  String _displayName = '';
  String _displayPhone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Enter your name',
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _phoneController,
            decoration: InputDecoration(
              labelText: 'Enter your phone number',
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _displayName = _nameController.text;
                _displayPhone = _phoneController.text;
              });
            },
            child: Text(
              'Submit',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 16.0),
          Text('Name: $_displayName'),
          SizedBox(height: 16.0),
          Text('Phone: $_displayPhone'),
        ],
      ),
      ),
    );
  }

  
}