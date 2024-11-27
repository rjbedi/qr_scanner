import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRcode extends StatefulWidget {
  const GenerateQRcode({super.key});

  @override
  State<GenerateQRcode> createState() => _Generate_QR_codeState();
}

class _Generate_QR_codeState extends State<GenerateQRcode> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generate QR code"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Conditionally render QR code only when text is not empty
              if (urlController.text.isNotEmpty)
                QrImageView(
                  data: urlController.text,
                  size: 200.0,
                ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // Add onChanged to update the state when text changes
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: urlController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Url',
                    labelText: "Enter Url",
                  ),
                ),
              ),
              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: urlController.text.isNotEmpty ? () {} : null,
                child: const Text('Generate QR Code'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
