
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

typedef SduSegmentedControlCallBack = void Function(int);

TextStyle get segmentedcontrol => const TextStyle(
  fontFamily: 'Poppins-Bold',
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  height: 1.3,
  letterSpacing: 0.0,
);

class SduSegmentedControl extends StatefulWidget {
  const SduSegmentedControl({
    super.key,
    required this.currentIndex,
    required this.onChanged,
    required this.options,
  });

  final List<String> options;
  final int currentIndex;
  final SduSegmentedControlCallBack onChanged;

  @override
  State<SduSegmentedControl> createState() => _SduSegmentedControlState();
}

class _SduSegmentedControlState extends State<SduSegmentedControl> {
  int _currentIndex = 0;

  late final TextStyle _optionsTextStyle;

  @override
  void initState() {
    super.initState();

    _optionsTextStyle = segmentedcontrol;

    _currentIndex = widget.currentIndex;
  }

  @override
  void didUpdateWidget(covariant SduSegmentedControl oldWidget) {
    super.didUpdateWidget(oldWidget);

    setState(() {
      _currentIndex = widget.currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {

    const fillColor = kSearchInputFillColor;
    const itemFillActive = kPrimaryColor;
    const textActive = kBackgroundColor;
    const textInactive = Colors.black;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: fillColor,
      ),
      height: 33,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            AnimatedContainer(
              margin: EdgeInsets.only(
                left: _currentIndex *
                    (constraints.maxWidth / widget.options.length),
              ),
              duration: const Duration(milliseconds: 200),
              height: 33,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8,),
              width: constraints.maxWidth / widget.options.length,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: itemFillActive,
              ),
              child: Center(
                child: Text(
                  widget.options[widget.currentIndex],
                  textAlign: TextAlign.center,
                  style: _optionsTextStyle.copyWith(
                    color: Colors.transparent,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Flex(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              direction: Axis.horizontal,
              children: List.generate(
                widget.options.length,
                    (index) => GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => _onChanged(index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: constraints.maxWidth / widget.options.length,
                    child: AnimatedDefaultTextStyle(
                      style: _optionsTextStyle.copyWith(
                        color:
                        _currentIndex == index ? textActive : textInactive,
                      ),
                      duration: const Duration(milliseconds: 200),
                      child: Center(
                        child: Text(
                          widget.options[index],
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
    widget.onChanged(index);
  }
}
