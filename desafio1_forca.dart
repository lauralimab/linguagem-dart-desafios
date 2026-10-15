import 'dart:io';

void main() {

  String palavra = 'dart';

  List letrasTentadas = [];

  int erros = 0;
  int maxErros = 6;

  print('JOGO DA FORCA');

  while (erros < maxErros) {

    print('');
    
    if (erros == 0) {
      print(' +---+');
      print(' |   |');
      print('     |');
      print('     |');
      print('     |');
    }

    if (erros == 1) {
      print(' +---+');
      print(' |   |');
      print(' O   |');
      print('     |');
      print('     |');
    }

    if (erros == 2) {
      print(' +---+');
      print(' |   |');
      print(' O   |');
      print(' |   |');
      print('     |');
    }

    if (erros == 3) {
      print(' +---+');
      print(' |   |');
      print(' O   |');
      print('/|   |');
      print('     |');
    }

    if (erros == 4) {
      print(' +---+');
      print(' |   |');
      print(' O   |');
      print('/|\\  |');
      print('     |');
    }

    if (erros == 5) {
      print(' +---+');
      print(' |   |');
      print(' O   |');
      print('/|\\  |');
      print('/    |');
    }

    String palavraMostrada = '';

    for (int i = 0; i < palavra.length; i++) {

      if (letrasTentadas.contains(palavra[i])) {
        palavraMostrada = palavraMostrada + palavra[i] + ' ';
      } else {
        palavraMostrada = palavraMostrada + '_ ';
      }
    }

    print('');
    print('Palavra: $palavraMostrada');
    print('Erros: $erros');
    print('Letras usadas: $letrasTentadas');

    // verifica se ainda tem letra escondida
    if (!palavraMostrada.contains('_')) {
      print('');
      print('Voce ganhou!');
      break;
    }

    print('');
    stdout.write('Digite uma letra: ');

    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada == '') {
      print('Digite uma letra.');
      continue;
    }

    String letra = entrada[0].toLowerCase();

    if (letrasTentadas.contains(letra)) {

      print('Voce ja digitou essa letra.');

    } else {

      letrasTentadas.add(letra);

      if (palavra.contains(letra)) {
        print('Acertou!');
      } else {
        print('Errou!');
        erros++;
      }
    }
  }

  if (erros == maxErros) {

    print('');
    print(' +---+');
    print(' |   |');
    print(' O   |');
    print('/|\\  |');
    print('/ \\  |');

    print('');
    print('Voce perdeu!');
    print('A palavra era: $palavra');
  }
}