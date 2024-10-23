
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uv_intern_task02/pages/cart_page.dart';
import 'package:uv_intern_task02/widgets/quantity_selector.dart';
import 'package:uv_intern_task02/widgets/size_selector.dart';
import '../model/Shop.dart';
import '../model/products.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  void addToCart(BuildContext context) {

      final shop = context.read<Shop>();
      shop.addToCart(product);

      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Success'),
            content: const Text('Product added to cart'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);

                  },
                  child: const Text('Shop More')
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
                  },
                  child: const Text('View Cart')
              ),
            ],
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f4fb),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f4fb),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[
                Container(
                height: 300,
                width: double.infinity,
                color: const Color(0xfff1f4fb),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Center(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.network(
                          product.image.toString(),
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.contain
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 0,
                right: 30,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    size: 30,
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
              ),
              ]
            ),
            const SizedBox(height: 16),
            Container(
                width: double.infinity,
                height: 800,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Geeta Mens",
                                  style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  product.title.toString(),
                                  style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Row(
                                      children:  List.generate(5, (index) =>
                                          Icon(
                                              index < 4 ? Icons.star : Icons.star_border,
                                              color: Colors.amber,
                                              size: 16,
                                          )
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text('(4.5)', style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '\$${product.price} USD',
                            style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          const QuantitySelector(),
                          const Spacer(),
                          Stack(
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: const Color(0xfff1f4fb),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.share, size: 24, color: Colors.black))

                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 48),
                      Text(
                        "DESCRIPTION",
                        style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product.description.toString(),
                        style: GoogleFonts.lato(fontSize: 14),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        "SELECT SIZE",
                        style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const SizeSelector(),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 60),
                              backgroundColor: const Color(0xff6342e8)
                          ),
                          onPressed: () {
                            addToCart(context);
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_bag_outlined, size: 24, color: Colors.white),
                              SizedBox(width: 16),
                              Text(
                                "ADD TO CART",
                                style: TextStyle(fontSize: 18, color: Colors.white), ),
                            ],
                          )
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
