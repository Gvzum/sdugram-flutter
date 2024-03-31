import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

TextStyle get inputSearchPlaceholder => const TextStyle(
      fontFamily: 'Poppins-Regular',
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      height: 1.3,
      letterSpacing: 0.0,
    );

class SduInputSearch extends StatefulWidget {
  const SduInputSearch({
    super.key,
    this.autofocus = false,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.controller,
    this.focusNode,
    this.placeholderText,
    this.leadingIcon,
    this.trailingIcon,
    this.showCancelButton = true,
    this.onCancelPressed,
  });

  final VoidCallback? onCancelPressed;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final String? placeholderText;
  final bool autofocus;
  final bool showCancelButton;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onEditingComplete;

  @override
  State<SduInputSearch> createState() => _SduInputSearchState();
}

class _SduInputSearchState extends State<SduInputSearch> {
  FocusNode? _focusNode;
  TextEditingController? _controller;

  late TextStyle placeholderTextStyle;
  late TextStyle valueTextStyle;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _controller = widget.controller ?? TextEditingController();

    _focusNode?.addListener(() {
      setState(() {});
    });

    _controller?.addListener(() {
      setState(() {});
    });

    placeholderTextStyle = inputSearchPlaceholder;
    valueTextStyle = inputSearchPlaceholder;
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode?.dispose();
    _controller?.dispose();
  }

  bool get hasFocus => (_focusNode?.hasFocus ?? false);

  bool get hasText => (_controller?.text.isNotEmpty ?? false);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 38),
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: constraints.maxWidth,
                child: TextField(

                  autofocus: widget.autofocus,
                  focusNode: _focusNode,
                  controller: _controller,
                  cursorHeight: 16,
                  cursorWidth: 1,
                  cursorColor: kPrimaryColor,
                  onEditingComplete: widget.onEditingComplete,
                  onSubmitted: widget.onSubmitted,
                  onChanged: widget.onChanged,
                  style: valueTextStyle,
                  decoration: InputDecoration(
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 36,
                      maxWidth: 36,
                    ),
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 36,
                      maxWidth: 36,
                    ),
                    prefixIcon: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: AssetsGen.icons.search.svg(height: 18, width: 18),
                      ),
                    ),
                    suffixIcon: hasFocus
                        ? IconButton(
                            padding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            onPressed: () => _controller?.clear(),
                            icon: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Icon(
                                  widget.trailingIcon ?? Icons.cancel,
                                  color: kSearchIconColor,
                                  size: 20,
                                ),
                              ),
                            ),
                          )
                        : null,
                    hintText: 'Search',
                    hintStyle: placeholderTextStyle,
                    filled: true,
                    fillColor: kSearchInputFillColor,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
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
}
