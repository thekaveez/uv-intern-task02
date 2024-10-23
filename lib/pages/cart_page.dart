import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uv_intern_task02/model/Shop.dart';
import 'package:uv_intern_task02/widgets/cart_item.dart';
import 'package:uv_intern_task02/pages/card_details_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) =>
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Cart', style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index){
                    final product = value.cart[index];
                    return CartItem(product: product, onRemove: (){
                      value.removeFromCart(product);
                      setState(() {});
                    },);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      backgroundColor: const Color(0xff6342e8)
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetailsPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.shopping_cart_checkout, size: 24, color: Colors.white),
                        const SizedBox(width: 16),
                        const Text(
                          "GO TO CHECKOUT",
                          style: TextStyle(fontSize: 18, color: Colors.white), ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            height: 30,
                            color: const Color(0xff472cb6),
                            child: Center(
                              child: Text(
                                "\$${value.getTotalPrice().toStringAsFixed(2)}",
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                              ),
                                                        ),
                            ),
                          ),
                        )

                      ],

                    ),
                  )
              ),
            ),
          ],
        ),

      ),
    );
  }
}


