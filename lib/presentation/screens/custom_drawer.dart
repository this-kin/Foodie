import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/widgets/home_widget/drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 38.w),
          child: Column(
            children: [
              SizedBox(height: 160.h),
              const DrawerTile(
                icon: ConstanceData.profile,
                title: "Profile",
                page: RouteGenerator.connection,
              ),
              const DrawerTile(
                icon: ConstanceData.buy,
                title: "Orders",
                page: RouteGenerator.order,
              ),
              const DrawerTile(
                icon: ConstanceData.offer,
                title: "Offer and Promo",
                page: RouteGenerator.offers,
              ),
              const DrawerTile(
                icon: ConstanceData.policy,
                title: "Privacy policy",
                page: RouteGenerator.policy,
              ),
              const DrawerTile(
                icon: ConstanceData.security,
                title: "Security",
                page: RouteGenerator.security,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
