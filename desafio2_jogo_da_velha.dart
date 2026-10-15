import 'dart:io';

void main() {

  List<String> tabuleiro = [
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' '
  ];

  String jogador = 'X';
  int jogadas = 0;

  print('JOGO DA VELHA');
  print('');
  print('As posicoes sao:');
  print('1 | 2 | 3');
  print('--+---+--');
  print('4 | 5 | 6');
  print('--+---+--');
  print('7 | 8 | 9');

  while (true) {

    print('');
    print(' ${tabuleiro[0]} | ${tabuleiro[1]} | ${tabuleiro[2]} ');
    print('---+---+---');
    print(' ${tabuleiro[3]} | ${tabuleiro[4]} | ${tabuleiro[5]} ');
    print('---+---+---');
    print(' ${tabuleiro[6]} | ${tabuleiro[7]} | ${tabuleiro[8]} ');
    print('');

    print('Vez do jogador $jogador');

    stdout.write('Escolha uma posicao de 1 a 9: ');

    String entrada = stdin.readLineSync()!;
    int posicao = int.parse(entrada);

    posicao = posicao - 1;

    if (posicao < 0 || posicao > 8) {
      print('Posicao invalida');
      continue;
    }

    if (tabuleiro[posicao] != ' ') {
      print('Essa posicao ja foi usada');
      continue;
    }

    tabuleiro[posicao] = jogador;
    jogadas++;

    bool venceu = false;

    if (tabuleiro[0] == jogador &&
        tabuleiro[1] == jogador &&
        tabuleiro[2] == jogador) {
      venceu = true;
    }

    if (tabuleiro[3] == jogador &&
        tabuleiro[4] == jogador &&
        tabuleiro[5] == jogador) {
      venceu = true;
    }

    if (tabuleiro[6] == jogador &&
        tabuleiro[7] == jogador &&
        tabuleiro[8] == jogador) {
      venceu = true;
    }

    if (tabuleiro[0] == jogador &&
        tabuleiro[3] == jogador &&
        tabuleiro[6] == jogador) {
      venceu = true;
    }

    if (tabuleiro[1] == jogador &&
        tabuleiro[4] == jogador &&
        tabuleiro[7] == jogador) {
      venceu = true;
    }

    if (tabuleiro[2] == jogador &&
        tabuleiro[5] == jogador &&
        tabuleiro[8] == jogador) {
      venceu = true;
    }

    if (tabuleiro[0] == jogador &&
        tabuleiro[4] == jogador &&
        tabuleiro[8] == jogador) {
      venceu = true;
    }

    if (tabuleiro[2] == jogador &&
        tabuleiro[4] == jogador &&
        tabuleiro[6] == jogador) {
      venceu = true;
    }

    if (venceu == true) {

      print('');
      print(' ${tabuleiro[0]} | ${tabuleiro[1]} | ${tabuleiro[2]} ');
      print('---+---+---');
      print(' ${tabuleiro[3]} | ${tabuleiro[4]} | ${tabuleiro[5]} ');
      print('---+---+---');
      print(' ${tabuleiro[6]} | ${tabuleiro[7]} | ${tabuleiro[8]} ');

      print('');
      print('Jogador $jogador ganhou!');

      break;
    }

    if (jogadas == 9) {
      print('');
      print('Deu empate!');
      break;
    }

    if (jogador == 'X') {
      jogador = 'O';
    } else {
      jogador = 'X';
    }
  }
}