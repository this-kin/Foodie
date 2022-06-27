import 'package:fooddelivery/core/exports.dart';

class Policy extends StatelessWidget {
  const Policy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
    );
  }
}
