import 'pages/Formulario.dart';
import 'package:crud_app/pages/HomePage.dart';

routes() {
  return {
    '/home': (context) => HomePage(title: 'Crud no Flutter'),
    '/form': (context) => Formulario(title: "Formulário"),
  };
}
