import 'package:ecom/models/products.dart';
import 'package:ecom/widgets/available_sizes.dart';
import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key,required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink[50],
                ),
                child: Image.asset(product.image, fit: BoxFit.cover,),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.price,
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  product.description,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10,),
                Text(
                  "Available Sizes",
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    AvailableSizes(sizes: "US 6",),
                    AvailableSizes(sizes: "US 7",),
                    AvailableSizes(sizes: "US 8",),
                    AvailableSizes(sizes: "US 9",),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  "Available Colors",
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.yellow,
                    ),
                    SizedBox(width: 8,),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: BottomAppBar(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              product.price,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),

            ),
            ElevatedButton(onPressed: ()=>{}, child: Text("Add to cart")),
          ],
        ),
      ),
    );
  }
}
