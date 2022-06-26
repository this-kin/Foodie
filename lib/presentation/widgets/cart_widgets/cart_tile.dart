import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fooddelivery/constants/product_constants.dart';
import 'package:fooddelivery/core/exports.dart';

class CartTile extends StatefulWidget {
  final Food? food;
  final VoidCallback? onPressed;
  final int? index;
  final VoidCallback? onDeleted;

  const CartTile({
    Key? key,
    this.food,
    this.onPressed,
    this.onDeleted,
    this.index,
  }) : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Slidable(
        key: ValueKey(widget.index),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            SlidableAction(
              onPressed: (_) {},
              backgroundColor: theme.backgroundColor,
              foregroundColor: primaryColor,
              icon: Icons.favorite_border_rounded,
              label: '',
            ),
            SlidableAction(
              onPressed: (_) {
                widget.onDeleted!.call();
              },
              backgroundColor: theme.backgroundColor,
              foregroundColor: primaryColor,
              icon: Icons.delete_rounded,
              label: '',
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (_) {},
              backgroundColor: theme.backgroundColor,
              foregroundColor: primaryColor,
              icon: Icons.favorite_border_rounded,
              label: '',
            ),
            SlidableAction(
              onPressed: (_) {
                widget.onDeleted!.call();
              },
              backgroundColor: theme.backgroundColor,
              foregroundColor: primaryColor,
              icon: Icons.delete_rounded,
              label: '',
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(30.sp),
          ),
          alignment: Alignment.center,
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: widget.onPressed,
              borderRadius: BorderRadius.circular(30.sp),
              child: Row(
                children: [
                  Image.asset(
                    widget.food!.image!,
                    height: 120.h,
                    width: 120.w,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food!.name!,
                        style: TextStyle(
                          fontFamily: baseFontUrl,
                          fontSize: 17.sp,
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        widget.food!.price!,
                        style: TextStyle(
                          fontFamily: baseFontUrl,
                          fontSize: 15.sp,
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 80.w),
                  Column(
                    children: [
                      SizedBox(height: 50.h),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(30.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5.0.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  _count--;
                                },
                                child: Icon(
                                  Icons.minimize_outlined,
                                  color: whiteColor,
                                  size: 12.sp,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                _count.toString(),
                                style: TextStyle(
                                  fontFamily: baseFontUrl,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              InkWell(
                                onTap: () {
                                  _count++;
                                },
                                child: Icon(
                                  Icons.add,
                                  color: whiteColor,
                                  size: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
