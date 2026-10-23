import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// =============================================================================
// ORDER DATA — public so any screen (checkout, cart, etc.) can create one
// =============================================================================

class OrderData {
  final String restaurantName;
  final String orderNumber;
  final String status; // 'ongoing' | 'completed' | 'canceled'
  final Color statusColor;
  final String statusLabel;
  final String image;
  final String items;
  final String amount;
  final String date;
  final bool showTrackButton;

  const OrderData({
    required this.restaurantName,
    required this.orderNumber,
    required this.status,
    required this.statusColor,
    required this.statusLabel,
    required this.image,
    required this.items,
    required this.amount,
    required this.date,
    required this.showTrackButton,
  });

  Map<String, dynamic> toJson() => {
    'restaurantName': restaurantName,
    'orderNumber': orderNumber,
    'status': status,
    'statusColor': statusColor.value,
    'statusLabel': statusLabel,
    'image': image,
    'items': items,
    'amount': amount,
    'date': date,
    'showTrackButton': showTrackButton,
  };

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData(
    restaurantName: json['restaurantName'] as String,
    orderNumber: json['orderNumber'] as String,
    status: json['status'] as String,
    statusColor: Color(json['statusColor'] as int),
    statusLabel: json['statusLabel'] as String,
    image: json['image'] as String,
    items: json['items'] as String,
    amount: json['amount'] as String,
    date: json['date'] as String,
    showTrackButton: json['showTrackButton'] as bool,
  );
}

// =============================================================================
// ORDER STORE — single source of truth for orders across the whole app.
// Persists to SharedPreferences so orders survive an app restart, and
// exposes a ValueNotifier so OrdersScreen (or anything else) updates
// live the moment an order is added — no manual refresh needed.
// =============================================================================

class OrderStore {
  OrderStore._();
  static final OrderStore instance = OrderStore._();

  static const String _prefsKey = 'saved_orders';

  final ValueNotifier<List<OrderData>> orders = ValueNotifier<List<OrderData>>(
    [],
  );

  bool _loaded = false;

  /// Call once (e.g. in OrdersScreen.initState) before reading orders.
  Future<void> load() async {
    if (_loaded) return;

    final prefs = await SharedPreferences.getInstance();
    final List<String> raw = prefs.getStringList(_prefsKey) ?? [];

    orders.value = raw
        .map((s) => OrderData.fromJson(jsonDecode(s) as Map<String, dynamic>))
        .toList();

    _loaded = true;
  }

  /// Call this from checkout / place-order flow to add a real order.
  /// Example:
  ///   await OrderStore.instance.addOrder(
  ///     OrderData(
  ///       restaurantName: 'Biryani House',
  ///       orderNumber: '#DH${DateTime.now().millisecondsSinceEpoch}',
  ///       status: 'ongoing',
  ///       statusLabel: 'On the way',
  ///       statusColor: Colors.orange,
  ///       image: 'assets/biryani.png',
  ///       items: 'Chicken Biryani x 1, Coke x 1',
  ///       amount: 'Rs. 399',
  ///       date: 'Today, 1:20 PM',
  ///       showTrackButton: true,
  ///     ),
  ///   );
  Future<void> addOrder(OrderData order) async {
    await load();
    final List<OrderData> updated = [order, ...orders.value];
    orders.value = updated;
    await _persist(updated);
  }

  /// Update an existing order's status (e.g. ongoing -> completed).
  Future<void> updateOrderStatus(
    String orderNumber, {
    required String status,
    required String statusLabel,
    required Color statusColor,
    bool? showTrackButton,
  }) async {
    await load();
    final List<OrderData> updated = orders.value.map((o) {
      if (o.orderNumber != orderNumber) return o;
      return OrderData(
        restaurantName: o.restaurantName,
        orderNumber: o.orderNumber,
        status: status,
        statusColor: statusColor,
        statusLabel: statusLabel,
        image: o.image,
        items: o.items,
        amount: o.amount,
        date: o.date,
        showTrackButton: showTrackButton ?? o.showTrackButton,
      );
    }).toList();

    orders.value = updated;
    await _persist(updated);
  }

  Future<void> _persist(List<OrderData> list) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      _prefsKey,
      list.map((o) => jsonEncode(o.toJson())).toList(),
    );
  }
}
