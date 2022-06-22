import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/home_widget/food_widget.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: foods.length,
      itemBuilder: (_, index) {
        final snapshot = foods[index];
        return FoodWidget(
          image: snapshot.image,
          name: snapshot.name,
          price: snapshot.price,
          onPressed: () => Navigator.pushNamed(
            context,
            RouteGenerator.food,
            arguments: snapshot,
          ),
        );
      },
    );
  }
}
