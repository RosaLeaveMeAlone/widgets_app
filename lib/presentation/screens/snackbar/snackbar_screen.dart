import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';


  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    final snackbar = SnackBar(
              content: const Text('Hola, soy un snackbar'),
              duration: const Duration(seconds: 2),
              action: SnackBarAction(
                label: 'Cerrar',
                onPressed: (){
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text('Lorem Ipsum Dolor Sit Amet Consectetur Adipiscing Elit. Nullam Auctor, Nisl Eget Ultricies Aliquam, Nunc Sapien Aliquet Nunc, Quis Aliqua'),
        actions: [
          TextButton(
            onPressed: (){
              context.pop();
            }, 
            child: const Text('Cancelar')
          ),
          FilledButton(onPressed: (){}, child: const Text('Aceptar'))
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars y dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
           showCustomSnackbar(context);
           
        }, 
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies aliquam, nunc sapien aliquet nunc, quis aliqua')
                  ]
                );
              }, 
              child: Text('Licencias Usadas')
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: Text('Mostrar Dialogo')
            ),
          ],
        ),
      ),
    );
  }
}