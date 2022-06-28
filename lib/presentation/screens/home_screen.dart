import 'package:fooddelivery/core/exports.dart';
import 'package:fooddelivery/presentation/screens/custom_drawer.dart';
import 'package:fooddelivery/presentation/screens/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  final Duration _duration = const Duration(milliseconds: 500);
  late Animation<double> scaleAnimation;
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _duration);
    scaleAnimation = Tween(begin: 1.0, end: 0.8).animate(controller)
      ..addStatusListener((status) {
        print(status);
      });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const MyDrawer(),
          AnimatedPositioned(
            top: isOpen ? size.height * 0.08 : 0.0,
            bottom: isOpen ? size.height * 0.08 : 0.0,
            left: isOpen ? size.width * 0.55.w : 0.0,
            right: isOpen ? size.width * -0.45.w : 0.0,
            duration: _duration,
            child: ScaleTransition(
              scale: scaleAnimation,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isOpen ? 15.sp : 0.0),
                child: Home(
                  onPressed: () {
                    setState(() {
                      isOpen = !isOpen;
                      if (isOpen) {
                        controller.reverse();
                      } else {
                        controller.forward();
                      }
                    });
                  },
                ),
              ),
            ),
          ),
          // IconButton(
          //   onPressed: () {
          //     setState(() {
          //       isOpen = !isOpen;
          //       if (isOpen) {
          //         controller.reverse();
          //       } else {
          //         controller.forward();
          //       }
          //     });
          //   },
          //   icon: Icon(
          //     Icons.play_arrow,
          //     size: 100.sp,
          //     color: whiteColor,
          //   ),
          // )
        ],
      ),
    );
  }
}
