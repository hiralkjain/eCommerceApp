import 'package:flutter/material.dart';

class AvailableSizes extends StatefulWidget {
  final String sizes;
  const AvailableSizes({super.key, required this.sizes});

  @override
  State<AvailableSizes> createState() => _AvailableSizesState();
}

class _AvailableSizesState extends State<AvailableSizes> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          isSelected = !isSelected;
        })
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        width: 40,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.red),
        ),
        child: Text(widget.sizes,style: TextStyle(fontWeight: FontWeight.bold,),),
      ),
    );
  }
}
