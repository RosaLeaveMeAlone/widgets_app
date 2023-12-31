import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = 'theme-changer';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final isDarkmode = ref.watch( isDarkmodeProvider );


    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: isDarkmode ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
            onPressed: () {

            }
          )
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final List<Color> colorList = ref.watch(colorListProvider);

    return ListView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {

        final Color color = colorList[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color),),
          subtitle: Text('${ color.value }'),
          activeColor: color,
          value: index, 
          groupValue: 0, 
          onChanged: (value) {
            //TODO: Notificar cambio
          });
      }
    );
  }
}