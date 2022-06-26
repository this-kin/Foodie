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
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
  }

  //
  bool _isOpen = false;

  void animate() {
    setState(() {});
    if (_controller.isCompleted) {
      _controller.reverse();
    }
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const MyDrawer(),
          AnimatedPositioned(
            top: _isOpen ? size.height * 0.08 : 0.0,
            bottom: _isOpen ? size.height * 0.08 : 0.0,
            left: _isOpen ? size.width * 0.55.w : 0.0,
            right: _isOpen ? size.width * -0.45.w : 0.0,
            duration: const Duration(milliseconds: 300),
            child: ScaleTransition(
              scale: _animation,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(_isOpen ? 15.sp : 0.0),
                child: Home(onPressed: animate),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
