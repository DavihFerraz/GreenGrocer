// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:green_grocer/src/config/app_data.dart' as appData;
import 'package:green_grocer/src/pages/orders/components/order_tile.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedidos',
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(
          16,
        ),
        itemBuilder: (_, index) => OrderTile(
          order: appData.orders[index],
        ),
        separatorBuilder: (_, index) => const SizedBox(
          height: 10,
        ),
        itemCount: appData.orders.length,
      ),
    );
  }
}
