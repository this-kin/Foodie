import 'package:fooddelivery/constants/colors_constants.dart';
import 'package:fooddelivery/constants/images_constants.dart';
import 'package:fooddelivery/core/exports.dart';

class Food {
  final String? image;
  final String? name;
  final String? price;
  final String? info;
  final String? policy;

  Food({
    this.image,
    this.name,
    this.price,
    this.info,
    this.policy,
  });
}

Food food1 = Food(
  image: ConstanceData.veggie,
  name: 'Veggie\ntomato mix',
  price: 'N1,900',
  info: "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
  policy:
      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
);

Food food2 = Food(
  image: ConstanceData.fish,
  name: 'Spicy\nfish sauce',
  price: 'N2,300.99',
  info: "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
  policy:
      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
);

Food food3 = Food(
  image: ConstanceData.veggie,
  name: 'Fried\nchicken m.',
  price: 'N1,900',
  info: "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
  policy:
      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
);

Food food4 = Food(
  image: ConstanceData.fish,
  name: 'Moi-moi\nand ekpa.',
  price: 'N1,900',
  info: "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
  policy:
      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
);

Food food5 = Food(
  image: ConstanceData.veggie,
  name: 'Veggie\ntomato mix',
  price: 'N1,900',
  info: "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
  policy:
      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
);

List<Food> foods = [food1, food2, food3, food4, food5];

////////////////

class Payment {
  final String? name;
  final String? image;
  final Color? color;

  Payment({
    this.name,
    this.image,
    this.color,
  });
}

Payment payment1 = Payment(
  name: "Card",
  image: ConstanceData.creditcard,
  color: cardColor,
);
Payment payment2 = Payment(
  name: "Bank Account",
  image: ConstanceData.bank,
  color: bankColor,
);
Payment payment3 = Payment(
  name: "Paypal",
  image: ConstanceData.paypal,
  color: paypalColor,
);

List<Payment> payments = [payment1, payment2, payment3];

class DeliveryM {
  final String? type;

  DeliveryM({this.type});
}

DeliveryM gateway1 = DeliveryM(type: "Door delivery");

DeliveryM gateway2 = DeliveryM(type: "Pick up");

List<DeliveryM> deliveries = [gateway1, gateway2];
