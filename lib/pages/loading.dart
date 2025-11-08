import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project2/widget/item_product.dart';

import '../models/Product.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PayPal', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Items(),
    );
  }
}


class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {

  List<Product> products = [];

  Future<List<Product>> fetchProducts() async {
    final String url = 'https://fakestoreapi.com/products/';
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      return data.map((item) => Product.fromJson(item)).toList();

    } else {
      throw Exception('Failed to load products');
    }
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}', style: TextStyle(color: Colors.black),));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No products found'));
          } else {
            final List<Product> products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) => ItemProduct(product: products[index]),
            );
          }
        });
  }
}

