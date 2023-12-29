import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      )
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('Elevated Button')
              ),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Elevated Disabled')
              ),
            ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.add), label: const Text('Elevated Icon')),
            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.ac_unit_sharp), label: const Text('data'),),
            OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarms_outlined), label: const Text('data'),),
            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.account_circle_sharp), label: const Text('data'),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.add), style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary)
            ),),
          ],
        ),
      ),
    );
  }
}