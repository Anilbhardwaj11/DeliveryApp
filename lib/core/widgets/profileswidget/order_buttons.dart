import 'package:flutter/material.dart';

class OrderButtons extends StatelessWidget {
  const OrderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildOrderButton(
              Icons.inventory, "Pending\nOrders", screenWidth, screenHeight),
          _buildOrderButton(Icons.local_shipping, "Picked Up\nOrders",
              screenWidth, screenHeight),
          _buildOrderButton(Icons.check_circle, "Completed\nOrders",
              screenWidth, screenHeight),
          _buildOrderButton(Icons.local_shipping, "Shipped\nOrders",
              screenWidth, screenHeight),
        ],
      ),
    );
  }

  Widget _buildOrderButton(
      IconData icon, String label, double screenWidth, double screenHeight) {
    final buttonWidth = screenWidth * 0.45;
    final buttonHeight = screenHeight * 0.15;
    final iconSize = screenWidth * 0.08;
    final fontSize = screenWidth * 0.04;

    return InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
        decoration: BoxDecoration(
          color: const Color(0xFFD5EEF8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: iconSize, color: Colors.blue),
              SizedBox(height: screenHeight * 0.01),
              Text(
                label,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
