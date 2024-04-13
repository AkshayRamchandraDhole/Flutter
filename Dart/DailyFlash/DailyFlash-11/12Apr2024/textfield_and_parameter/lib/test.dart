import 'package:flutter/material.dart';

class LimitedTextField extends StatefulWidget {
  const LimitedTextField({super.key});
  @override
  _LimitedTextFieldState createState() => _LimitedTextFieldState();
}

class _LimitedTextFieldState extends State<LimitedTextField> {
  TextEditingController _controller = TextEditingController();
  int _characterCount = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateCharacterCount);
  }

  void _updateCharacterCount() {
    setState(() {
      _characterCount = _controller.text.length;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limited TextField'),
      ),
      body: Center(
        child: Container(
          width: 250,
          child: TextField(
            controller: _controller,
            maxLength: 20, // Limit the user to typing 20 characters
            decoration: InputDecoration(
              hintText: 'Enter your text here...',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              labelText: 'Your Name',
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              counterText: '$_characterCount/20', // Display character count
              counterStyle: TextStyle(
                color: _characterCount == 20 ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}