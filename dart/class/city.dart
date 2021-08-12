import 'country.dart';
import 'country.dart';
import 'problem.dart';

class City extends Country with Problems {
  City() : super("โตเกียว", "ช้าง");

  void callSuper() {
    print("เมืองหลวง :" + super.city);
    super.callHello();
  }

  @override
  String callAnimal() {
    return "ช้าง";
  }
}