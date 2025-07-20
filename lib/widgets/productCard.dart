import 'package:flutter/material.dart';
import 'package:ecom/models/products.dart';

class Productcard extends StatefulWidget {
  final Product product;
  const Productcard({super.key, required this.product});

  @override
  State<Productcard> createState() => _ProductcardState();
}

class _ProductcardState extends State<Productcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[100],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.favorite_border_outlined,color: Colors.red,),
            ],
          ),
          SizedBox(
            height: 135,
              width: 130,
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.cover,
              ),
          ),
          Text(widget.product.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),),
          Text(widget.product.category,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(widget.product.price,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),),
        ],
      )
    );
  }
}
