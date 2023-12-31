import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = 'theme-changer';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final isDarkmode = ref.watch( themeNotifierProvider ).isDarkmode;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: isDarkmode ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
            onPressed: () {
              // ref.read(isDarkmodeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            }
          )
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final List<Color> colorList = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {

        final Color color = colorList[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color),),
          subtitle: Text('${ color.value }'),
          activeColor: color,
          value: index, 
          groupValue: selectedColor, 
          onChanged: (value) {
            // ref.read(selectedIndexProvider.notifier).update((state) => index);
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          });
      }
    );
  }
}