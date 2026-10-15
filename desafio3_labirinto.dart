import 'dart:io';

void main(){

 List<List<String>> labirinto = [
 ['#','#','#','#','#','#','#','#','#'],
 ['#',' ',' ',' ','#',' ',' ','S','#'],
 ['#',' ','#',' ','#',' ','#',' ','#'],
 ['#',' ','#',' ',' ',' ','#',' ','#'],
 ['#',' ','#','#','#',' ','#',' ','#'],
 ['#',' ',' ',' ',' ',' ',' ',' ','#'],
 ['#','#','#','#','#','#','#','#','#']
 ];

 int linhaJogador = 5;
 int colunaJogador = 1;

 print('JOGO DO LABIRINTO');

 print('P = jogador');
 print('S = saida');
 print('# = parede');
 print('Use w, a, s e d para andar');

 while(true){

  print('');

  for(int linha = 0; linha < labirinto.length; linha++){

   String desenho = '';

   for(int coluna = 0; coluna < labirinto[linha].length; coluna++){

    if(linha == linhaJogador && coluna == colunaJogador){
     desenho = desenho + 'P';
    }else{
     desenho = desenho + labirinto[linha][coluna];
    }

   }

   print(desenho);
  }

  print('');
  stdout.write('Digite o movimento: ');

  String movimento = stdin.readLineSync()!;

  int novaLinha = linhaJogador;
  int novaColuna = colunaJogador;

  if(movimento == 'w'){
   novaLinha = novaLinha - 1;
  }

  if(movimento == 's'){
   novaLinha = novaLinha + 1;
  }

   if(movimento == 'a'){
    novaColuna = novaColuna - 1;
   }

 if(movimento == 'd'){
  novaColuna = novaColuna + 1;
 }

 if(movimento != 'w' &&
 movimento != 's' &&
 movimento != 'a' &&
 movimento != 'd'){

   print('Movimento invalido');
   continue;
 }

 if(labirinto[novaLinha][novaColuna] == '#'){
  print('Tem uma parede ai');
  continue;
 }

 linhaJogador = novaLinha;
 colunaJogador = novaColuna;

 if(labirinto[linhaJogador][colunaJogador] == 'S'){

  print('');
  print('Voce encontrou a saida!');
  break;
 }

 }

}