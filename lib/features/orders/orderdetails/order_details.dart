import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double getFont(double size) => size * screenWidth / 375;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                            vertical: screenHeight * 0.01,
                          ),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                child: Text('AJ'),
                              ),
                              SizedBox(width: screenWidth * 0.05),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Alex Johnson',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: getFont(16),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.005),
                                    Row(
                                      children: [
                                        Icon(Icons.phone,
                                            size: getFont(14),
                                            color: Colors.black54),
                                        SizedBox(width: screenWidth * 0.01),
                                        Text(
                                          '1234567890',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: getFont(14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: screenHeight * 0.005),
                                    Row(
                                      children: [
                                        Icon(Icons.email,
                                            size: getFont(14),
                                            color: Colors.black54),
                                        SizedBox(width: screenWidth * 0.01),
                                        Text(
                                          'alex.johnson@example.com',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: getFont(14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: screenHeight * 0.005),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            size: getFont(16),
                                            color: Colors.amber),
                                        SizedBox(width: screenWidth * 0.01),
                                        Text(
                                          '4.5',
                                          style:
                                              TextStyle(fontSize: getFont(14)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.01,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _orderDetails('Payment Type:', 'COD', getFont),
                              _orderDetails(
                                  'Order Status:', 'Picked Up', getFont),
                              _orderDetails('ETA:', '45 mins', getFont),
                              _orderDetails('Time Picked:', '3:05 PM', getFont),
                              _orderDetails('Delivery Time Estimated:',
                                  '3:50 PM', getFont),
                              _orderDetails(
                                  'Payment Amount:', '₹750.00', getFont),
                              _orderDetails('Delivery Instructions:',
                                  'Leave at gate', getFont),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Delivery Location: ',
                                    style: TextStyle(
                                      fontSize: getFont(16),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Icon(
                                    Icons.inventory_2,
                                    color: Colors.brown,
                                    size: getFont(20),
                                  ),
                                  SizedBox(width: screenWidth * 0.01),
                                  Expanded(
                                    child: Text(
                                      '456 Elm Street , NYC',
                                      style: TextStyle(
                                        fontSize: getFont(16),
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Open in Google Maps',
                                  style: TextStyle(
                                    fontSize: getFont(14),
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                            vertical: screenHeight * 0.015,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _itemRow('Chicken Biryani', '2 x ₹250', getFont),
                              _itemRow('Cold Coffee', '1 x ₹100', getFont),
                              _itemRow('Extra Napkins', '1 x Free', getFont),
                              SizedBox(height: screenHeight * 0.015),
                              const Divider(),
                              SizedBox(height: screenHeight * 0.01),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Amount',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getFont(16),
                                    ),
                                  ),
                                  Text(
                                    '₹750.00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getFont(16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.navigation, size: getFont(20)),
                              label: Text(
                                'Navigate',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: getFont(14),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                padding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.015,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.phone,
                                  color: Colors.white, size: getFont(20)),
                              label: Text(
                                'Call Customer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: getFont(14),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                padding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.015,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.check_circle_outline,
                              size: getFont(20)),
                          label: Text(
                            'Mark as Delivered',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getFont(14),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.015,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _orderDetails(
      String label, String value, double Function(double) getFont) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: getFont(14)),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: getFont(14)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemRow(String name, String price, double Function(double) getFont) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: getFont(14))),
          Text(price,
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: getFont(14))),
        ],
      ),
    );
  }
}

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double getFont(double size) => size * screenWidth / 375;

    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Row(
        children: [
          Text(
            'Order Details',
            style: TextStyle(
              fontSize: getFont(18),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            '#DLV-2098',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: getFont(14),
            ),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.share),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
