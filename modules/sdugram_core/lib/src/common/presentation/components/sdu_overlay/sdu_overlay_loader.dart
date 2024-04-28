import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class SduOverlayLoader {
  static final SduOverlayLoader _singleton = SduOverlayLoader._internal();

  factory SduOverlayLoader() {
    return _singleton;
  }

  SduOverlayLoader._internal();

  OverlayEntry? _overlayEntry;

  void show(BuildContext context) {
    _overlayEntry = _createOverlayEntry(context);
    Overlay.of(context).insert(_overlayEntry!);
  }

  void hide() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _createOverlayEntry(BuildContext context) {
    return OverlayEntry(
      builder: (BuildContext context) => Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        bottom: 0.0,
        child: Material(
          color: Colors.white.withOpacity(0.5),
          child: const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
