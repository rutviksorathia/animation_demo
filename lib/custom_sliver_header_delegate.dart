import 'package:flutter/material.dart';

class CustomSliverPersistantHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  /// Shrink Percentage will be returned in shrink parameter
  Widget Function(double shrink) builder;
  BuildContext context;
  double? customMaxExtent;
  double? customMinExtent;
  CustomSliverPersistantHeaderDelegate(
      {required this.builder,
      required this.context,
      this.customMaxExtent,
      this.customMinExtent});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var offset = (shrinkOffset /
        ((customMaxExtent ?? MediaQuery.of(context).size.width) -
            MediaQuery.of(context).padding.top -
            kToolbarHeight));
    // print(offset);
    if (offset > 1) {
      offset = 1;
    } else if (offset < 0) {
      offset = 0;
    }
    return builder(offset);
  }

  @override
  double get maxExtent => customMaxExtent ?? MediaQuery.of(context).size.width;

  @override
  double get minExtent =>
      customMinExtent ?? MediaQuery.of(context).padding.top + kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
