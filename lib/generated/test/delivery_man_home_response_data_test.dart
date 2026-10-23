import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for DeliveryManHomeResponseData
void main() {
  final instance = DeliveryManHomeResponseDataBuilder();
  // TODO add properties to the builder and call build()

  group(DeliveryManHomeResponseData, () {
    // Orders accepted today
    // int todaysOrderCount
    test('to test the property `todaysOrderCount`', () async {
      // TODO
    });

    // Orders accepted since start of week (Monday)
    // int thisWeekOrderCount
    test('to test the property `thisWeekOrderCount`', () async {
      // TODO
    });

    // Orders accepted since start of calendar month
    // int thisMonthOrderCount
    test('to test the property `thisMonthOrderCount`', () async {
      // TODO
    });

    // Sum of original_delivery_charge + dm_tips for today's transactions
    // num todaysEarning
    test('to test the property `todaysEarning`', () async {
      // TODO
    });

  });
}
