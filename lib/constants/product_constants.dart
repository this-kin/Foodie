import 'package:fooddelivery/constants/images_constants.dart';

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
  image: ConstanceData.chicken,
  name: 'Fried\nchicken m.',
  price: 'N1,900',
  info: "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
  policy:
      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
);

Food food4 = Food(
  image: ConstanceData.egg,
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
