import 'package:flutter/material.dart'; // Import Flutter's material package for UI components.

void main() {
  runApp(CurrencyConverterApp()); // Entry point of the app, runs the CurrencyConverterApp widget.
}

// Stateless widget that serves as the root of the app.
class CurrencyConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner.
      home: CurrencyConverterScreen(), // Sets the home screen of the app.
    );
  }
}

// Stateful widget to handle user input and currency conversion.
class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState(); // Creates the mutable state.
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  final TextEditingController _controller = TextEditingController();
  // Controller to read user input.
  double _convertedAmount = 0.0;
  // Stores the converted amount in PKR.
  final double exchangeRate = 280.0;
  // Fixed exchange rate (1 USD = 280 PKR).

  // Function to convert USD to PKR
  void _convertCurrency() {
    double dollars = double.tryParse(_controller.text) ?? 0.0;
    // Converts input text to double, defaults to 0.0 if invalid.
    setState(() {
      _convertedAmount = dollars * exchangeRate;
      // Calculates the PKR equivalent.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dollar to PKR Converter")),
      // App bar with title.
      body: Padding(
        padding: EdgeInsets.all(16.0),
        // Adds padding around the content.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Centers content vertically.
          children: [
            TextField(
              controller: _controller, // Uses the controller for input.
              keyboardType: TextInputType.number, // Allows only numeric input.
              decoration: InputDecoration(
                labelText: "Enter amount in USD", // Input label.
                border: OutlineInputBorder(), // Adds a border around the input field.
              ),
            ),
            SizedBox(height: 16), // Adds vertical spacing.
            ElevatedButton(
              onPressed: _convertCurrency, // Calls conversion function on button press.
              child: Text("Convert"), // Button label.
            ),
            SizedBox(height: 16), // Adds vertical spacing.
            Text(
              "Equivalent in PKR: $_convertedAmount", // Displays the converted amount.
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Styles the text.
            ),
          ],
        ),
      ),
    );
  }
}