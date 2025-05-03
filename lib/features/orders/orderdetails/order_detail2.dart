import 'package:flutter/material.dart';

class OrderDetailsWithoutId extends StatelessWidget {
  const OrderDetailsWithoutId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Customer Card
              Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        child: Text('AJ'),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alex Johnson',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.phone, size: 14, color: Colors.grey),
                                SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    '+1234567890',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.email, size: 14, color: Colors.grey),
                                SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    'alex.johnsson@example.com',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                SizedBox(width: 4),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      FittedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.phone, color: Colors.white, size: 16),
                              SizedBox(width: 4),
                              Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                  child: Column(
                    children: [
                      _buildInfoRow(
                        title: 'Payment Type:',
                        value: 'COD',
                        valueColor: Colors.blue,
                        showValueBadge: true,
                      ),
                      _buildInfoRow(
                          title: 'Order Status:',
                          value: 'Picked Up',
                          valueColor: const Color.fromARGB(255, 25, 157, 30),
                          showValueBadge: true),
                      _buildInfoRow(
                        title: 'ETA:',
                        value: '45 mins',
                      ),
                      _buildInfoRow(
                        title: 'Time Picked:',
                        value: '3:05 PM',
                      ),
                      _buildInfoRow(
                        title: 'Delivery Location:',
                        value: '456 Elm Street, NYC',
                        prefix: const Icon(Icons.location_on,
                            color: Colors.brown, size: 18),
                      ),
                      _buildInfoRow(
                        title: 'Delivery Time:',
                        value: 'Estimated: 3:50 PM',
                      ),
                      _buildInfoRow(
                        title: 'Delivery Instructions:',
                        value: 'Leave at gate',
                        suffix: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.navigation,
                                    color: Colors.white, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  'Navigate',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      _buildOrderItem(
                        name: 'Chicken Biryani',
                        quantity: '2 x ₹250',
                      ),
                      _buildOrderItem(
                        name: 'Cold Coffee',
                        quantity: '1 x ₹100',
                      ),
                      _buildOrderItem(
                        name: 'Extra Napkins',
                        quantity: '1 x Free',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '₹750.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Mark as Delivered Button
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Mark as Delivered',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required String title,
    required String value,
    Color valueColor = Colors.black,
    bool showValueBadge = false,
    Widget? prefix,
    Widget? suffix,
  }) {
    Color getBadgeColor(Color color) {
      if (color == Colors.blue) return const Color.fromARGB(255, 215, 229, 241);
      if (color == Colors.green) return const Color.fromARGB(255, 190, 235, 194);
      if (color == Colors.red) return Colors.red.shade50;
      return Colors.grey.shade200;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          Row(
            children: [
              if (prefix != null) ...[
                prefix,
                const SizedBox(width: 4),
              ],
              showValueBadge
                  ? Container(
                      decoration: BoxDecoration(
                        color: getBadgeColor(valueColor),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 2,
                      ),
                      child: Text(
                        value,
                        style: TextStyle(
                          color: valueColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : Text(
                      value,
                      style: TextStyle(
                        color: valueColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              if (suffix != null) ...[
                const SizedBox(width: 8),
                suffix,
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem({
    required String name,
    required String quantity,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            quantity,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
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