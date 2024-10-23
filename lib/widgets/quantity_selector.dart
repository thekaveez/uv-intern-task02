import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key, });

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int _quantity = 1;


  void _increaseQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent,
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.remove, size: 18),
            onPressed: _decreaseQuantity,
          ),
          Text(
            '$_quantity',
            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.add, size: 18),
            onPressed: _increaseQuantity,
          ),
        ],
      ),
    );
  }
}