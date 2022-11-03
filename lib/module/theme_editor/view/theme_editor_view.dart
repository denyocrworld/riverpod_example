import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/theme_editor_controller.dart';

class ThemeEditorView extends ConsumerWidget {
  const ThemeEditorView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    ThemeEditorController controller = ref.watch(themeEditorController);
    controller.view = this;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme Editor'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }
}