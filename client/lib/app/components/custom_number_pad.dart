import 'package:client/global_exports.dart';

class CustomNumberPad extends StatelessWidget {
  const CustomNumberPad({
    super.key,
    this.height,
    this.width,
    this.expand = false,
    this.onPressed,
    this.rowSpacing = 10,
    this.columnSpacing = 10,
  });
  final double? height;
  final double? width;
  final double rowSpacing;
  final double columnSpacing;
  final bool expand;
  final Function(ModifiedPadItem modifiedPadItem)? onPressed;

  @override
  Widget build(BuildContext context) {
    String allValues = '';
    return SizedBox(
      height: height,
      width: width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isInfinitHeight = constraints.maxHeight == double.infinity;

          final partitions = _numberPadItems.parition<int, NumberPadItem>(3);

          return FittedBox(
            fit: BoxFit.scaleDown,
            child: SizedBox(
              height:
                  (isInfinitHeight || !expand) ? null : constraints.maxHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...partitions.map(
                    (partition) {
                      final isLast = partitions.last == partition;
                      return SizedBox(
                        width: constraints.maxWidth,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...partition.map(
                                  (part) {
                                    final padItem = part.value;

                                    return GestureDetector(
                                      onTap: () {
                                        if (padItem.onPressed != null) {
                                          final newItem = padItem.onPressed
                                              ?.call(ModifiedPadItem(
                                                  allValue: allValues,
                                                  value: padItem.value));
                                          allValues =
                                              newItem?.allValue ?? allValues;
                                          onPressed?.call(ModifiedPadItem(
                                              allValue: allValues,
                                              value: padItem.value));

                                          return;
                                        }
                                        if (padItem.value != null) {
                                          allValues += padItem.value ?? '';
                                          onPressed?.call(ModifiedPadItem(
                                              allValue: allValues,
                                              value: padItem.value));
                                        }
                                      },
                                      child: padItem.widget ??
                                          SizedBox(
                                            width: 80.w,
                                          ),
                                    );
                                  },
                                )
                              ],
                            ),
                            if (!isLast) spaceh(rowSpacing)
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Map<int, NumberPadItem> get _numberPadItems => {
      1: NumberPadItem(widget: _defaultNumberPadWidget('1'), value: '1'),
      2: NumberPadItem(widget: _defaultNumberPadWidget('2'), value: '2'),
      3: NumberPadItem(widget: _defaultNumberPadWidget('3'), value: '3'),
      4: NumberPadItem(widget: _defaultNumberPadWidget('4'), value: '4'),
      5: NumberPadItem(widget: _defaultNumberPadWidget('5'), value: '5'),
      6: NumberPadItem(widget: _defaultNumberPadWidget('6'), value: '6'),
      7: NumberPadItem(widget: _defaultNumberPadWidget('7'), value: '7'),
      8: NumberPadItem(widget: _defaultNumberPadWidget('8'), value: '8'),
      9: NumberPadItem(widget: _defaultNumberPadWidget('9'), value: '9'),
      10: NumberPadItem(),
      11: NumberPadItem(widget: _defaultNumberPadWidget('0'), value: '0'),
      12: NumberPadItem(
        onPressed: (modified) {
          return ModifiedPadItem(
              allValue:
                  modified.allValue.substring(0, modified.allValue.length - 1));
          // return ();
        },
        widget: _defaultNumberPadWidget(
          '',
          widget: Icon(
            Icons.backspace_outlined,
            color: AppColors.color.primary,
          ),
        ),
      ),
    };

Widget _defaultNumberPadWidget(String value, {Widget? widget}) {
  return Container(
    height: 70.w,
    width: 70.w,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.color.grey400,
    ),
    child: widget ??
        Text(
          value,
          style: TextStyles.heading().copyWith(
            fontSize: 32.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
  );
  // return Text(value);
}

class NumberPadItem {
  final Widget? widget;
  final String? value;
  final ModifiedPadItem? Function(ModifiedPadItem modifiedValue)? onPressed;

  NumberPadItem({this.widget, this.value, this.onPressed});
}

class ModifiedPadItem {
  final String allValue;
  final String? value;

  ModifiedPadItem({this.allValue = '', this.value});
}
