import 'package:flutter/material.dart';
import 'package:aquadiary/pages/fish.dart';

class Newfish extends StatefulWidget {
  const Newfish({super.key});

  @override
  State<Newfish> createState() => _NewfishState();
}

class _NewfishState extends State<Newfish> {
  final _formKey = GlobalKey<FormState>();

  String _species = '';
  String _habitat = '';
  String _variant = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: const Text(
          'Add New Fish',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Row with species and habitat
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: TextFormField(
                        decoration: _inputDecoration('Species'),
                        onChanged: (val) => _species = val,
                        validator: (value) =>
                        value == null || value.isEmpty ? 'Enter species' : null,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      decoration: _inputDecoration('Habitat'),
                      onChanged: (val) => _habitat = val,
                      validator: (value) =>
                      value == null || value.isEmpty ? 'Enter habitat' : null,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Variant field
              TextFormField(
                decoration: _inputDecoration('Variant'),
                onChanged: (val) => _variant = val,
                validator: (value) =>
                value == null || value.isEmpty ? 'Enter variant' : null,
              ),

              const SizedBox(height: 25),

              // Submit button
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(
                        context,
                        Fish(
                          species: _species,
                          description: _variant,
                          careTips: 'Habitat: $_habitat',
                        ),
                      );
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.teal[400],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text('Add Fish'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.grey.shade600, fontSize: 13),
      filled: true,
      fillColor: Colors.grey[100],
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.deepPurple.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
