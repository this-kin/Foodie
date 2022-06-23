import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/cart_widgets/cart_tile.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      // go back
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 123.w),
                  Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: baseFontUrl,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 57.h),
              Center(
                child: Image.asset(
                  ConstanceData.swipe,
                ),
              ),
              SizedBox(height: 19.h),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  final snapshot = foods[index];
                  return CartTile(
                    food: snapshot,
                    onPressed: () {
                      Navigator.pushNamed(context, RouteGenerator.food,
                          arguments: snapshot);
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
