import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/home_widget/food_widget.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
        title: TextField(
          style: TextStyle(
            fontSize: 17.sp,
            fontFamily: baseFontUrl,
            color: blackColor,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: 17.sp,
              fontFamily: baseFontUrl,
              color: greyTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      backgroundColor: theme.backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        decoration: BoxDecoration(
          color: whiteShadeColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.w),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 36.h),
            Center(
              child: Text(
                "Found ${foods.length} results",
                style: TextStyle(
                  fontFamily: baseFontUrl,
                  fontSize: 30.sp,
                  color: blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 45.h),
            GridView.builder(
              itemCount: foods.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10.0),
              itemBuilder: (_, index) {
                final snapshot = foods[index];
                return SecondFoodWidget(
                  image: snapshot.image,
                  name: snapshot.name,
                  price: snapshot.price,
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
    );
  }
}
