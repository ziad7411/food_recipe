
import 'package:flutter/material.dart';
import 'package:food_recipe/constants/my_colors.dart';
class GenericFlexibleButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const GenericFlexibleButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width*.01, // Minimum width
        minHeight: MediaQuery.of(context).size.height*.01, 
      ),
      decoration: BoxDecoration(
        color: MyColors.myGray,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0), // Border padding
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 20.0,
              ), // Increase padding for text space
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
            ),
          ),
        ),
      ),
    );
  }
}