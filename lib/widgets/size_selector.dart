import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String _selectedSize = 'M'; // Default selected size

  void _selectSize(String size) {
    setState(() {
      _selectedSize = size; // Update selected size
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, // Align chips to start
      children: ['S', 'M', 'L', 'XL', 'XXL'].map((size) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: GestureDetector( // Use GestureDetector to handle taps
          onTap: () => _selectSize(size), // Call selectSize on tap
          child: Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: (_selectedSize == size) ? const Color(0xff6342e8) : const Color(0xfff1f4fb),
                ),
                child: Center(
                  child: Text(
                    size,
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: _selectedSize == size ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              if (_selectedSize == size) // Show checkmark only for selected size
                const Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
            ],
          ),
        ),
      )).toList(),
    );
  }
}