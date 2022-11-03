import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fhe_template/riverpod_util.dart';
import '../view/theme_editor_view.dart';

class ThemeEditorController extends ChangeNotifier implements HyperController {
  ThemeEditorView? view;
}

final themeEditorController =
    ChangeNotifierProvider<ThemeEditorController>((ref) {
  return ThemeEditorController();
});