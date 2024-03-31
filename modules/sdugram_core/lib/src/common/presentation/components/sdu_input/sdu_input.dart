

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sdugram_core/presentation.dart';

TextStyle get inputLabelOutside => const TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  height: 1.3,
  letterSpacing: 0.0,
);

TextStyle get inputCaption => const TextStyle(
  fontFamily: 'Poppins',
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  height: 1.3,
  letterSpacing: 0.0,
);

class SduInput extends StatefulWidget {
  /// Creates TextField according to BCC Design System
  ///
  /// Creation and disposal of [focusNode] and [controller] is managed by the widget itself
  const SduInput({
    super.key,
    this.widgetPadding = const EdgeInsets.fromLTRB(16, 8, 16, 16),
    this.enabled,
    this.autofocus = false,
    this.readOnly = false,
    this.labelOutside = false,
    this.enableSuggestions = false,
    this.autocorrect = false,
    this.obscureText = false,
    this.inputMask,
    this.inputFilter,
    this.inputMaskLazy = true,
    this.errorText,
    this.labelText,
    this.placeholderText,
    this.captionText,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onSubmitted,
    this.onCleared,
    this.onEditingComplete,
    this.textInputAction,
    this.leadingWidget,
    this.trailingWidget,
    this.onTrailingTap,
    this.alwaysShowTrailing = false,
    this.showRemainingPlaceholder = false,
    this.enableClearAction = true,
    this.prefixText,
    this.suffixText,
    this.leadingFormatters = const [],
    this.trailingFormatters = const [],
    this.onTap,
    this.focusable = true,
  }) : assert(!(focusable == false && focusNode != null),
  'focusNode must be null if focusable = false');

  final EdgeInsets widgetPadding;
  final bool? enabled;
  final bool focusable;
  final bool labelOutside;
  final bool autofocus;
  final bool readOnly;
  final bool enableSuggestions;
  final bool autocorrect;
  final bool obscureText;
  final String? inputMask;
  final Map<String, RegExp>? inputFilter;
  final bool inputMaskLazy;
  final String? errorText;
  final String? labelText;
  final String? placeholderText;
  final String? captionText;
  final TextInputType? keyboardType;
  final InputController? controller;
  final FocusNode? focusNode;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int maxLines;
  final int? minLines;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final void Function()? onCleared;
  final TextInputAction? textInputAction;
  final Widget? leadingWidget;
  final Widget? trailingWidget;
  final VoidCallback? onTrailingTap;
  final bool alwaysShowTrailing;
  final bool showRemainingPlaceholder;
  final bool enableClearAction;
  final String? prefixText;
  final String? suffixText;
  final List<TextInputFormatter> leadingFormatters;
  final List<TextInputFormatter> trailingFormatters;

  @override
  State<SduInput> createState() => _SduInputState();
}

class _SduInputState extends State<SduInput> {
  bool _pressed = false;
  double textWidth = 0;
  double textHeight = 0;

  FocusNode? _focusNode;
  InputController? _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusable ? (widget.focusNode ?? FocusNode()) : null;
    _controller = widget.controller ??
        InputController(
          suffixText: widget.suffixText,
          placeholder: widget.placeholderText,
          labelOutside: widget.labelOutside,
          focusNode: _focusNode,
        );

    _focusNode?.addListener(() {
      setState(_handlePrefix);
    });

    _controller?.addListener(() {
      setState(() {
        _handlePrefix();
        _updateEnteredTextWidth();
      });
    });
  }

  @override
  void didUpdateWidget(SduInput oldWidget) {
    if (oldWidget.suffixText != widget.suffixText ||
        oldWidget.placeholderText != widget.placeholderText ||
        oldWidget.labelOutside != widget.labelOutside ||
        oldWidget.focusNode != widget.focusNode ||
        oldWidget.controller != widget.controller) {
      if (widget.controller == null) {
        _controller?.dispose();
      }
      _controller = widget.controller ??
          InputController(
            suffixText: widget.suffixText,
            placeholder: widget.placeholderText,
            labelOutside: widget.labelOutside,
            focusNode: _focusNode,
          );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode?.dispose();
    }
    if (widget.controller == null) {
      _controller?.dispose();
    }
    super.dispose();
  }

  void _handlePrefix() {
    final prefix = widget.prefixText;
    if (prefix == null) {
      return;
    }
    final textLength = _controller?.text.length ?? 0;
    if (_hasFocus && textLength == 0) {
      _controller?.text = prefix;
    } else if (!_hasFocus && textLength == prefix.length) {
      _controller?.text = '';
    } else if (_hasFocus && textLength < prefix.length) {
      _controller?.text = prefix;
    }
  }

  void _updateEnteredTextWidth() {

    final painter = TextPainter(
      text: TextSpan(
        text: _inputText,
        style: inputLabelOutside.copyWith(
          height: 1,
        ),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    );
    painter.layout();
    textWidth = painter.width;
    textHeight = painter.height;
  }

  bool get _hasFocus => _focusNode?.hasFocus ?? false;

  String get _inputText => _controller?.text ?? '';

  String get _placeholderText => widget.placeholderText ?? '';

  String get _remainingPlaceholder {
    if (!widget.showRemainingPlaceholder) return '';
    if (_inputText.length >= _placeholderText.length) return '';
    return _placeholderText.substring(_inputText.length);
  }

  bool get _scaleLabel =>
      (_focusNode?.hasFocus ?? false) ||
          (_controller?.text.isNotEmpty ?? false);

  T _resolveWith<T>(T Function(Set<_InputState> states) callback) {
    final states = <_InputState>{};
    if (_hasFocus) {
      states.add(_InputState.focused);
    }
    if (!(widget.enabled ?? true)) {
      states.add(_InputState.disabled);
    }
    if (widget.errorText != null) {
      states.add(_InputState.error);
    }
    if ((widget.enabled ?? true)) {
      if (_pressed) {
        states.add(_InputState.pressed);
      } else {
        states.add(_InputState.static);
      }
    }

    return callback.call(states);
  }

  @override
  Widget build(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Colors.green,
        ),
      ),
      child: Padding(
        padding: widget.widgetPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.labelOutside && widget.labelText != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  widget.labelText ?? '',
                  style: inputLabelOutside.copyWith(
                    color: kDefaultTextColor,
                  ),
                ),
              ),
            Stack(
              children: [
                Listener(
                  onPointerUp: (_) => setState(() => _pressed = false),
                  onPointerDown: (_) => setState(() => _pressed = true),
                  child: TextField(
                    onTap: widget.onTap,
                    onChanged: widget.onChanged,
                    onSubmitted: widget.onSubmitted,
                    onEditingComplete: widget.onEditingComplete,
                    textInputAction: widget.textInputAction,
                    enabled: widget.enabled,
                    autofocus: widget.autofocus,
                    readOnly: widget.readOnly,
                    enableSuggestions: widget.enableSuggestions,
                    autocorrect: widget.autocorrect,
                    obscureText: widget.obscureText,
                    controller: _controller,
                    focusNode: _focusNode,
                    keyboardType: widget.keyboardType,
                    maxLength: widget.maxLength,
                    maxLengthEnforcement: widget.maxLengthEnforcement,
                    maxLines: widget.maxLines,
                    minLines: widget.minLines,
                    cursorWidth: 1,
                    cursorHeight: 16,
                    cursorColor: kMainTextColor,
                    style: inputLabelOutside.copyWith(
                      color: kDefaultTextColor,
                    ),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: widget.labelOutside ||
                          widget.labelText == null ||
                          _hasFocus
                          ? widget.placeholderText
                          : null,
                      hintStyle: inputLabelOutside.copyWith(
                        color: kDefaultTextColor,
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 44,
                        maxWidth: 44,
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 44,
                        maxWidth: 44,
                      ),
                      prefixIcon: _buildPrefixIcon(),
                      suffixIcon: _buildSuffixWidget(context),
                      filled: true,
                      fillColor: kSecondaryButtonColor,
                      contentPadding:
                      widget.labelOutside || widget.labelText == null
                          ? const EdgeInsets.fromLTRB(16, 12, 16, 12)
                          : const EdgeInsets.fromLTRB(16, 20, 16, 4),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: _resolveWith((states) {
                          if (states.contains(_InputState.error)) {
                            return BorderSide(
                              color: Colors.redAccent,
                              style: BorderStyle.solid,
                            );
                          }
                          return BorderSide(
                            color: kMainTextColor,
                            style: BorderStyle.solid,
                          );
                        }),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: _resolveWith((states) {
                          if (states.contains(_InputState.error)) {
                            return BorderSide(
                              color: Colors.redAccent,
                              style: BorderStyle.solid,
                            );
                          }
                          return BorderSide(
                            color: kMainTextColor,
                            style: BorderStyle.solid,
                          );
                        }),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: _resolveWith((states) {
                          if (states.contains(_InputState.error)) {
                            return BorderSide(
                              color: Colors.redAccent,
                              style: BorderStyle.solid,
                            );
                          } else if (states.contains(_InputState.focused)) {
                            return BorderSide(
                              color: kPrimaryColor,
                              style: BorderStyle.solid,
                            );
                          }
                          return BorderSide(
                            color: kMainTextColor,
                            style: BorderStyle.solid,
                          );
                        }),
                      ),
                    ),
                    inputFormatters: [
                      ...widget.leadingFormatters,
                      MaskTextInputFormatter(
                        initialText: _controller?.text,
                        mask: widget.inputMask,
                        filter: widget.inputFilter,
                        type: widget.inputMaskLazy
                            ? MaskAutoCompletionType.lazy
                            : MaskAutoCompletionType.eager,
                      ),
                      ...widget.trailingFormatters,
                    ],
                  ),
                ),
                if (_remainingPlaceholder.isNotEmpty && _inputText.isNotEmpty)
                  Positioned(
                    top: widget.labelOutside || widget.labelText == null
                        ? 14
                        : 22,
                    left: textWidth + 16,
                    // Adjust based on your TextField's style
                    child: IgnorePointer(
                      child: Text(
                        _placeholderText.substring(_inputText.length),
                        style: inputLabelOutside.copyWith(
                          color: kDefaultTextColor,
                        ),
                      ),
                    ),
                  ),
                if (!widget.labelOutside && widget.labelText != null)
                  IgnorePointer(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.only(
                        top: _scaleLabel ? 4 : 12,
                        left: widget.leadingWidget != null ? 44 : 16,
                      ),
                      child: AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 200),
                        style: _scaleLabel
                            ? inputCaption.copyWith(
                          color: _resolveWith((states) {
                            if (states.contains(_InputState.error)) {
                              return Colors.redAccent;
                            }
                            return kDefaultTextColor;
                          }),
                        )
                            : inputLabelOutside.copyWith(
                          color: kDefaultTextColor,
                        ),
                        child: Text(
                          widget.labelText ?? '',
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            if (widget.errorText != null || widget.captionText != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  widget.errorText ?? widget.captionText ?? '',
                  style: inputCaption.copyWith(
                    color: _resolveWith((states) {
                      if (states.contains(_InputState.error)) {
                        return Colors.redAccent;
                      }
                      return kDefaultTextColor;
                    }),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget? _buildPrefixIcon() {
    final leadingWidget = widget.leadingWidget;
    if (leadingWidget != null) {
      return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 4),
          child: leadingWidget,
        ),
      );
    }
    return null;
  }

  Widget? _buildSuffixWidget(BuildContext context) {
    const iconColor = kDefaultTextColor;

    final trailingWidget = widget.trailingWidget;

    // No trailing, clear disabled
    if (trailingWidget == null && !widget.enableClearAction) {
      return null;
    }

    const clearIcon = Icon(Icons.cancel_rounded, color: iconColor,);

    if (trailingWidget == null) {
      // No trailing, clear always showed or input focused
      if (widget.alwaysShowTrailing || _hasFocus) {
        return IconButton(
          padding: EdgeInsets.zero,
          icon: clearIcon,
          onPressed: widget.onCleared != null
              ? () {
            _controller?.clear();
            widget.onCleared?.call();
          }
              : _controller?.clear,
        );
      }
      return null;
    } else {
      // Has trailing, but clear also enabled and input focused and has text
      if (widget.enableClearAction && _hasFocus && _inputText.isNotEmpty) {
        return IconButton(
          padding: EdgeInsets.zero,
          icon: clearIcon,
          onPressed: widget.onCleared != null
              ? () {
            _controller?.clear();
            widget.onCleared?.call();
          }
              : _controller?.clear,
        );
      } else if (widget.alwaysShowTrailing || _hasFocus) {
        // Has trailing and trailing must be always showed or input focused
        return IconButton(
          padding: EdgeInsets.zero,
          onPressed: widget.onTrailingTap,
          icon: trailingWidget,
        );
      }
      return null;
    }
  }
}

enum _InputState {
  focused,
  disabled,
  pressed,
  error,
  static,
}

class InputController extends TextEditingController {
  String? suffixText;
  bool labelOutside;

  final String? placeholder;
  final FocusNode? focusNode;

  InputController({
    super.text,
    this.suffixText,
    this.placeholder,
    this.labelOutside = false,
    this.focusNode,
  });

  bool get _hasFocus {
    return focusNode?.hasFocus ?? false;
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {

    Color valueStatic = kMainTextColor;
    TextStyle valueTextStyle =
    inputLabelOutside.copyWith(color: valueStatic);

    return TextSpan(
      style: valueTextStyle,
      children: [
        TextSpan(
          text: value.text,
          style: valueTextStyle,
        ),
        if (suffixText != null) ...[
          if (value.text.isEmpty)
            TextSpan(
              text: placeholder,
              style: valueTextStyle.copyWith(
                color: Colors.transparent,
              ),
            ),
          if (labelOutside ||
              (!labelOutside && (_hasFocus || value.text.isNotEmpty)))
            TextSpan(
              text: ' $suffixText',
              style: valueTextStyle,
            ),
        ]
      ],
    );
  }
}
