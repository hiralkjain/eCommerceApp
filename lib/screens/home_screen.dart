import 'package:ecom/models/my_product.dart';
import 'package:ecom/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecom/widgets/productCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Our Products",
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildProductCategory(index: 0,name:"All Products"),
              _buildProductCategory(index: 1,name:"Jackets"),
              _buildProductCategory(index: 2,name:"Sneakers"),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: isSelected==0 ?_buildAllProducts():
            isSelected==1?_buildJacketsProducts():_buildSneakerProducts(),
          ),
        ],
      ),
    );
  }
  Widget _buildProductCategory({required int index, required String name}) =>
      GestureDetector(
        onTap: () => setState(()=>
          isSelected = index
        ),
        child: Container(
            width: 100,
            height: 40,
            margin: const EdgeInsets.only(top: 10, right: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
        name,
        style: const TextStyle(color: Colors.white),
            ),
          ),
      );
 Widget _buildAllProducts() => GridView.builder(
     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
       childAspectRatio: (100/140),
       crossAxisSpacing: 12,
       mainAxisSpacing: 12,
     ),
   scrollDirection: Axis.vertical,
   itemCount: MyProducts.allProducts.length,
   itemBuilder: (context,index){
       final allProducts = MyProducts.allProducts[index];
       return GestureDetector(
         onTap: ()=> Navigator.push(
             context, 
             MaterialPageRoute(builder: (context) => DetailsScreen(product: allProducts))),
           child: Productcard(product: allProducts));
   },
 );
  Widget _buildJacketsProducts() => GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
    ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.jacketsProduct.length,
    itemBuilder: (context,index){
      final jacketsProduct = MyProducts.jacketsProduct[index];
      return GestureDetector(
          onTap: ()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen(product: jacketsProduct))),
          child: Productcard(product: jacketsProduct));
    },
  );
  Widget _buildSneakerProducts() => GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
    ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.sneakerProducts.length,
    itemBuilder: (context,index){
      final sneakerProducts = MyProducts.sneakerProducts[index];
      return GestureDetector(
          onTap: ()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen(product: sneakerProducts))),
          child: Productcard(product: sneakerProducts));
    },
  );
}
