import 'dart:io';
import 'dart:math';

//mensagem de erro para input null.
class ValorNuloException implements Exception {
    @override
    String toString() {
      return "ValorNuloException";
    }
  }
void falhou(e) {
  print("Não foi possível: $e");
  print("Valor nulo inserido.");
  //throw ValorNuloException();
}

//1 e 2.
double calcular_salario(salario, [percent = 25.00]) =>
    salario + (salario * percent) / 100.00;

//3 todo output na main ao invés daqui.
void calcular_idade(int birth, [int current = 2022]) {
  int anos = current - birth;
  int meses = anos * 12;
  int dias = meses * 30;
  int semanas = meses * 4;
  print(
      "Idade,\nem anos: $anos\nem meses: $meses\nem dias: $dias\nem semanas: $semanas.");
}

//4.
double racao_restante(peso, porcao) => peso - 5.0 * porcao * 2.0;

//5 todo: output na main ao invés daqui.
void swap(a, b) {
  double aux = a;
  a = b;
  b = aux;
  print("a = $a, b = $b.");
}

//6.
double calcular_volume(comp, larg, alt) => comp * larg * alt;

//7.
int square_diff(a, b) => (a - b) * (a - b);

//8.
double real_dolar(r, cot) => r / cot;

//9.
square_sum(a, b, c) => (a + b + c) * (a + b + c);

//10.
double soma(a, b) => a + b;
double sub(a, b) => a - b;
double multi(a, b) => a * b;
double div(a, b) => a / b;

//11.
double volume_esfera(raio) => (4 / 3) * 3.14159 * (raio) * (raio) * (raio);

//14.
bool pode_votar(int nasc, [int atual = 2022]) {
  if (atual - nasc >= 18) {
    return true;
  }
  return false;
}

//15 e 36.
media_vetor(dito_cujo) {
  int tam = dito_cujo.length;
  var soma = dito_cujo[0];
  for (int i = 1; i < tam; i++) {
    soma += dito_cujo[i];
  }
  return soma / tam;
}

//16.
bool is_par(int n) {
  if (n % 2 == 0) {
    return true;
  }
  return false;
}

//17.
int idade_simples(int kek) => 2022 - kek;

//Pulando para a parte de loops e arrays...

//30.
void final_countdown() {
  for (int i = 30; i > 0; i--) {
    if (i % 4 == 0) {
      stdout.write("${[i]} ");
    } else {
      stdout.write("$i ");
    }
  }
  stdout.write('\n');
}

//31 e 32.
int somatorio(op) {
  int sum = 0;
  int i, fim, intervalo;
  if (op == 31) {
    i = 6;
    fim = 100;
    intervalo = 2;
  } else {
    i = 0;
    fim = 500;
    intervalo = 50;
  }
  for (i = i; i <= fim; i += intervalo) {
    sum += i;
  }
  return sum;
}

//33.
void par_sort([List<int> array = const [1, 2, 3, 4, 5, 6]]) {
  List<int> parzinhos = [];
  List<int> imparezinhos = [];
  int pares = 0, impares = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      parzinhos.add(array[i]);
      pares++;
    } else {
      imparezinhos.add(array[i]);
      impares++;
    }
  }
  print("$impares valores ímpares, sendo eles: $imparezinhos");
  print("$pares valores pares, sendo eles: $parzinhos");
}

//34.
void sortear(numeros, over5, by3) {
  int i = 0;
  while (i < 20) {
    int randy = Random().nextInt(11);
    numeros.add(randy);
    if (randy > 5) {
      over5.add(randy);
    }
    if (randy % 3 == 0) {
      by3.add(randy);
    }
    i++;
  }
}

//35.
menorzin(vetor) {
  var menor = vetor[0];
  for (int i = 0; i < vetor.length; i++) {
    if (vetor[i] < menor) {
      menor = vetor[i];
    }
  }
  return menor;
}

maiorzin(vetor) {
  var maior = vetor[0];
  for (int i = 0; i < vetor.length; i++) {
    if (vetor[i] > maior) {
      maior = vetor[i];
    }
  }
  return maior;
}

//36.
int select_up(arr) {
  int count = 0;
  int tam = arr.length;
  for (int i = 0; i < tam; i++) {
    if (arr[i] >= 18) {
      count++;
    }
  }
  return count;
}

int select_down(arr) {
  int count = 0;
  int tam = arr.length;
  for (int i = 0; i < tam; i++) {
    if (arr[i] < 5) {
      count++;
    }
  }
  return count;
}

//37.
class Pessoa {
  late int idade;
  late String sexo;
}

void sort_mf(p, womyn, myn, idades, h_idades, m_idades) {
  for (int i = 0; i < 5; i++) {
    if (p[i].sexo == 'M') {
      womyn.add(p[i]);
      m_idades.add(p[i].idade);
    }
    if (p[i].sexo == 'H') {
      myn.add(p[i]);
      h_idades.add(p[i].idade);
    }
    idades.add(p[i].idade);
    //print("Pessoa ${i + 1}: ${p[i].idade} anos, ${p[i].sexo}.").
  }
}

//43.
class Identidade {
  late String nome;
  late int idade;
}

//44.
class Funcionario {
  late String nome;
  late String sexo;
  late double salario;
}

int menu() {
  print("Digite um número de 1 a 44 para acessar um exercício.");
  print("Digite 0 para Sair.");
  String? aux = stdin.readLineSync();
  return (aux != null) ? int.parse(aux) : -1;
}

void main() {
  int op;
  do {
    op = menu();
    switch (op) {
      case 0:
        {
          print("Obrigado por usar.");
        }
        break;
      case 1:
        {
          print("Informe o salário do funcionário");
          String? valor = stdin.readLineSync();
          try {
            if (valor != null) {
            double salario = double.parse(valor);
            double resultado = calcular_salario(salario);
            print("O salario de $salario será reajustado para $resultado.");
          }
          } catch (e) {
            falhou(e);
          }
          
        }
        break;
      case 2:
        {
          print("Informe o salário do funcionário");
          String? valor = stdin.readLineSync();
          print("Informe o valor de reajsute");
          String? ajuste = stdin.readLineSync();
          try {
          if ((valor != null) && (ajuste != null)) {
            double salario = double.parse(valor);
            double percent = double.parse(ajuste);
            double resultado = calcular_salario(salario, percent);
            print("O salario de $salario será reajustado para $resultado.");
          }
          } catch(e) {
            falhou(e);
          }
        }
        break;
      case 3:
        {
          print("Informe o ano de nascimento");
          String? nascimento = stdin.readLineSync();
          print("Informe o ano atual");
          String? atual = stdin.readLineSync();
          try {
          if ((nascimento != null) && (atual != null)) {
            int birth = int.parse(nascimento);
            int current = int.parse(atual);
            calcular_idade(birth, current);
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 4:
        {
          print("Insira o peso do saco de ração");
          String? peso_i = stdin.readLineSync();
          print("Insira a quantidade de ração para cada gato");
          String? porcao_i = stdin.readLineSync();
          try {
          if ((peso_i != null) && (porcao_i != null)) {
            double peso = double.parse(peso_i);
            double porcao = double.parse(porcao_i);
            double resultado = racao_restante(peso, porcao);
            print("A ração restante após 5 dias de consumo é $resultado.");
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 5:
        {
          print("Insira valor a");
          String? a_i = stdin.readLineSync();
          print("Insira valor b");
          String? b_i = stdin.readLineSync();
          try {
          if ((a_i != null) && (b_i != null)) {
            double a = double.parse(a_i);
            double b = double.parse(b_i);
            swap(a, b);
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 6:
        {
          print("Comprimento: ");
          String? comp_i = stdin.readLineSync();
          print("Largura: ");
          String? larg_i = stdin.readLineSync();
          print("Altura: ");
          String? alt_i = stdin.readLineSync();
          try {
          if ((comp_i != null) && (larg_i != null) && (alt_i != null)) {
            double comp = double.parse(comp_i);
            double larg = double.parse(larg_i);
            double alt = double.parse(alt_i);
            double resultado = calcular_volume(comp, larg, alt);
            print("O volume será $resultado.");
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 7:
        {
          print("Insira valor A: ");
          String? a_i = stdin.readLineSync();
          print("Insira valor B: ");
          String? b_i = stdin.readLineSync();
          try {
          if ((a_i != null) && (b_i != null)) {
            int a = int.parse(a_i);
            int b = int.parse(b_i);
            int resultado = square_diff(a, b);
            print("O quadrado da diferença de $a e $b é $resultado.");
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 8:
        {
          print("Valor em reais: ");
          String? r_i = stdin.readLineSync();
          print("Cotação atual do dólar");
          String? cot_i = stdin.readLineSync();
          try {
          if ((r_i != null) && (cot_i != null)) {
            double r = double.parse(r_i);
            double cot = double.parse(cot_i);
            double resultado = real_dolar(r, cot);
            print("$r reais são $resultado dólares.");
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 9:
        {
          print("Valor a: ");
          String? a_i = stdin.readLineSync();
          print("Valor b: ");
          String? b_i = stdin.readLineSync();
          print("Valor c: ");
          String? c_i = stdin.readLineSync();
          try {
          if ((a_i != null) && (b_i != null) && (c_i != null)) {
            int a = int.parse(a_i);
            int b = int.parse(b_i);
            int c = int.parse(c_i);
            int resultado = square_sum(a, b, c);
            print("O quadrado da soma de $a, $b, $c é $resultado.");
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 10:
        {
          print("Valor a: ");
          String? a_i = stdin.readLineSync();
          print("Valor b:");
          String? b_i = stdin.readLineSync();
          try {
          if ((a_i != null) && (b_i != null)) {
            double a = double.parse(a_i);
            double b = double.parse(b_i);
            print(
                "Termos: $a e $b,\nSoma: ${soma(a, b)}\nSubtração: ${sub(a, b)}\nDivisão: ${div(a, b)}\nMultiplicação: ${multi(a, b)}.");
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 11:
        {
          print("Raio: ");
          String? r_i = stdin.readLineSync();
          double raio = (r_i != null) ? double.parse(r_i) : 0.0;
          print(
              "O volume de uma esfera com raio $raio é ${volume_esfera(raio)}.");
        }
        break;
      case 12:
        {
          print("Insira um número inteiro");
          String? n_i = stdin.readLineSync();
          int n = (n_i != null) ? int.parse(n_i) : 0;
          print(
              "O predecessor e sucessor de $n são, respectivamente: ${n - 1} e ${n + 1}.");
        }
        break;
      case 13:
        {
          print("Insira a velocidade do carro: ");
          String? v_i = stdin.readLineSync();
          int v = (v_i != null) ? int.parse(v_i) : 0;
          if (v > 80) {
            print("Motorista multado, valor: ${(v - 80) * 5} reais.");
          } else {
            print("O carro não excedeu o limite de velocidade.");
          }
        }
        break;
      case 14:
        {
          print("Insira data de nascimento: ");
          String? nasc_i = stdin.readLineSync();
          int nasc = (nasc_i != null) ? int.parse(nasc_i) : 0;
          if (pode_votar(nasc)) {
            print("Pode votar.");
          } else {
            print("Não pode votar.");
          }
        }
        break;
      case 15:
        {
          print("Insira nome do aluno: ");
          String? nome_i = stdin.readLineSync();
          print("Insira nota 1: ");
          String? n1_i = stdin.readLineSync();
          print("Insira nota 2: ");
          String? n2_i = stdin.readLineSync();
          try {
          if ((n1_i != null) && (n2_i != null)) {
            double nota1 = double.parse(n1_i);
            double nota2 = double.parse(n2_i);
            List<double> notas = [nota1, nota2];
            double media = media_vetor(notas);
            print("A média é $media.");
            if (media >= 7.0) {
              print("É um bom aproveitamento.");
            } else {
              print("Não é um bom aproveitamento.");
            }
          }} catch(e) {
            falhou(e);
          }
        }
        break;
      case 16:
        {
          print("Insira um número inteiro: ");
          String? n_i = stdin.readLineSync();
          int n = (n_i != null) ? int.parse(n_i) : 0;
          if (is_par(n)) {
            print("Número par.");
          } else {
            print("Número ímpar.");
          }
        }
        break;
      case 17:
        {
          print("Insira data de nascimento: ");
          String? kekw = stdin.readLineSync();
          int kek = (kekw != null) ? int.parse(kekw) : 0;
          int idade = idade_simples(kek);
          if (idade < 18) {
            print("Faltam ${18 - idade} anos para o alistamento militar.");
          } else {
            print("Se passaram ${idade - 18} anos do alistamento militar.");
          }
        }
        break;
      case 18:
        {
          print("Digite o nome: ");
          String? input18a = stdin.readLineSync();
          print("Digite o sexo: [h/m]");
          String? input18b = stdin.readLineSync();
          print("Digite o valor das compras: ");
          String? input18c = stdin.readLineSync();
          try {
            if ((input18a != null) && (input18b != null) && (input18c != null)) {
              String nome = input18a;
              String sexo = input18b;
              int preco = int.parse(input18c);
              if (sexo == 'h') {
                print("O preço final com o desconto ficou em: ${preco - (preco * 0.05)} para o $nome.");
              }
              if (sexo == 'm') {
                print("O preço final com o desconto ficou em: ${preco - (preco * 0.13)} para a $nome.");
              }
            }
          } catch(e) {
            falhou(e);
          }
        }
        break;
      case 19:
        {
          print("Qual a distancia em KM que o passageiro deseja percorrer?");
          String? input19 = stdin.readLineSync();
          try {
            if (input19 != null) {
              int distancia = int.parse(input19);
              if (distancia <= 200) {
                print("O valor da passagem é de: ${0.5 * distancia}.");
              } else {
                print("O valor da passagem é de: ${0.45 * distancia}.");
              }
            } 
          } catch(e) {
            falhou(e);
          }
        }
        break;
      case 20:
        {
          //...?
        }
        break;
      case 21:
        {
          print("Digite a primeira nota: ");
          String? input21a = stdin.readLineSync();
          print("Digite a segunda nota: ");
          String? input21b = stdin.readLineSync();
          try {
          if ((input21a != null) && (input21b != null)) {
            double nota1 = double.parse(input21a);
            double nota2 = double.parse(input21b);
            double media = (nota1 + nota2) / 2;
            if (media <= 4.9) {
              print("REPROVADO.");
            } else if (media >= 5.0 && media <= 6.9) {
              print("RECUPERAÇÃO.");
            } else if (media >= 7.0) {
              print("APROVADO.");
            }
          }
          } catch(e) {
            falhou(e);
          }
        }
        break;
      case 22:
        {
          print("Digite a largura: ");
          String? input22a = stdin.readLineSync();
          print("Digite o comprimento: ");
          String? input22b = stdin.readLineSync();
          try {
          if ((input22a != null) && (input22b != null)) {
            double largura = double.parse(input22a);
            double comprimento = double.parse(input22b);
            double area = largura * comprimento;
            if (area < 100) {
              print("TERRENO POPULAR");
            } else if (area >= 100 && area <= 500) {
              print("TERRENO MASTER");
            } else if (area > 500) {
              print("TERRENO VIP");
            }
          }
          } catch(e) {
            falhou(e);
          }
        }
        break;
      case 23:
        {
          print("Digite o nome do funcionário :");
          String? input23a = stdin.readLineSync();
          print("Digite o valor do salário: ");
          String? input23b = stdin.readLineSync();
          print("Há quantos anos esse funcionário trabalha na empresa? ");
          String? input23c = stdin.readLineSync();
          try {
          if ((input23a != null) && (input23b != null) && (input23c != null)) {
            String nome = input23a;
            int salario = int.parse(input23b);
            int anos = int.parse(input23c);
            if (anos <= 3) {
              print("O seu novo salário é de: ${salario + (salario * 0.03)}.");
            } else if (anos > 3 && anos < 10) {
              print("O seu novo salário é de: ${salario + (salario * 0.125)}.");
            } else if (anos > 10) {
              print("O seu novo salário é de: ${salario + (salario * 0.20)}.");
            }
          }
          } catch(e) {
            falhou(e);
          }
        }
        break;
      case 24:
        {

        }
        break;
      case 25:
        {

        }
        break;
      case 26:
        {

        }
        break;
      case 27:
        {

        }
        break;
      case 28:
        {

        }
        break;
      case 29:
        {

        }
        break;
      case 30:
        {
          print("Contagem regressiva: ");
          final_countdown();
        }
        break;
      case 31:
        {
          print("Soma 6 + 8 + ... + 98 + 100: ");
          print("${somatorio(op)}");
        }
        break;
      case 32:
        {
          print("Soma 500 + 450 + 400 + ... + 50 + 0: ");
          print("${somatorio(op)}");
        }
        break;
      case 33:
        {
          par_sort();
        }
        break;
      case 34:
        {
          List<int> numeros = [];
          List<int> over5 = [];
          List<int> by3 = [];
          sortear(numeros, over5, by3);
          print(
              "Números sorteados: $numeros\nNúmeros acima de 5: ${over5.length}\nNúmeros divisíveis por 3: ${by3.length}.");
        }
        break;
      case 35:
        {
          List<double> vetor = [];
          for (int i = 1; i <= 8; i++) {
            print("Insira preço $i: ");
            String? input = stdin.readLineSync();
            double preco = (input != null) ? double.parse(input) : 0.0;
            vetor.add(preco);
          }
          print(
              "O menor preço da lista é ${menorzin(vetor)}, e o maior é ${maiorzin(vetor)}.");
        }
        break;
      case 36:
        {
          List<int> idades = [];
          int i = 0;
          while (i < 10) {
            print("Idade pessoa ${i + 1}: ");
            String? in_p = stdin.readLineSync();
            try {
            if (in_p != null) {
              idades.add(int.parse(in_p));
              i++;
            }} catch(e) {
              falhou(e);
            }
          }
          print("A média das idades é ${media_vetor(idades)}.");
          print("Há ${select_up(idades)} pessoas acima de 18 anos.");
          print("Há ${select_down(idades)} pessoas abaixo de 5 anos.");
          print("A maior idade lida foi ${maiorzin(idades)}.");
        }
        break;
      case 37:
        {
          Pessoa pessoa1 = Pessoa(),
              pessoa2 = Pessoa(),
              pessoa3 = Pessoa(),
              pessoa4 = Pessoa(),
              pessoa5 = Pessoa();
          List<Pessoa> people = [pessoa1, pessoa2, pessoa3, pessoa4, pessoa5];
          List<Pessoa> womyn = [];
          List<Pessoa> myn = [];
          List<int> idades = [];
          List<int> h_idades = [];
          List<int> m_idades = [];
          int i = 0;
          while (i < 5) {
            print("Insira a idade da pessoa ${i + 1}: ");
            String? input37a = stdin.readLineSync();
            print("Insira o sexo da pessoa ${i + 1} [H/M]: ");
            String? input37b = stdin.readLineSync();
            try {
            if ((input37a != null) && (input37b != null)) {
              people[i].idade = int.parse(input37a);
              people[i].sexo = input37b;
              i++;
            }} catch(e) {
              falhou(e);
            }
          }
          sort_mf(people, womyn, myn, idades, h_idades, m_idades);
          print("Quantidade de mulheres: ${womyn.length}. Quantidade de homens: ${myn.length}.");
          print("Media de idade do grupo: ${media_vetor(idades)}.");
          print("Media de idade dos homens: ${media_vetor(h_idades)}.");
          print("Quantidade de mulheres acima de 20 anos: ${m_idades.where((e) => e > 20).length}.");
        }
        break;
      case 38:
        {
          print("Insira 10 valores inteiros");
          List<int> valores = [];
          int i = 0;
          while (i < 10) {
            String? input38 = stdin.readLineSync();
            try {
            if (input38 != null) {
              valores.add(int.parse(input38));
              i++;
            }} catch(e) {
              falhou(e);
            }
          }
          List<int> pares = [];
          List<int> pos = [];
          for (int i = 0; i < valores.length; i++) {
            if (is_par(valores[i])) {
              pares.add(valores[i]);
              pos.add(i+1);
            } 
          }
          print("Valores pares: $pares.");
          print("Respectivas posições: $pos.");
        }
        break;
      case 39:
        {
          var randoseru = [];
          for (int i = 0; i < 20; i++) {
            randoseru.add(Random().nextInt(21));
          }
          print("Sorteados: $randoseru.");
        }
        break;
      case 40:
        {
          print("Insira 8 idades");
          List<int> ages = [];
          int i = 0;
          while (i < 8) {
            String? input40 = stdin.readLineSync();
            try {
            if (input40 != null) {
              ages.add(int.parse(input40));
              i++;
            }} catch(e) {
              falhou(e);
            }
          }
          print("A média das idades é ${media_vetor(ages)}.");
          var pst = [];
          ages.forEach((e) {
            if (e >= 25) {
              pst.add(ages.indexOf(e)+1);
            }
          });
          print("Posições das pessoas acima de 25 anos: $pst.");
          print("Maior idade: ${maiorzin(ages)}. Posição: ${ages.indexOf(maiorzin(ages))+1}.");
        }
        break;
      case 42:
        {
          var fest = List<int>.filled(20, 0);
          for (int i = 0; i < 20; i++) {
            fest[i] = Random().nextInt(99);
          }
          print("Vetor aleatório: $fest");
          fest.sort();
          print("Organizado: ${fest}");
        }
        break;
      case 43:
        {
          List<String> nomes43 = [];
          List<int> idades43 = [];
          int i = 0;
          while (i < 9) {
            print("Insira o nome da pessoa ${i + 1}: ");
            String? input43a = stdin.readLineSync();
            print("Insira a idade da pessoa ${i + 1}: ");
            String? input43b = stdin.readLineSync();
            try {
            if ((input43a != null) && (input43b != null)) {
              String temp = input43a;
              nomes43.add(temp);
              idades43.add(int.parse(input43b));
              i++;
            }} catch(e) {
              falhou(e);
            }
          }
          Identidade id1 = Identidade(),
            id2 = Identidade(),
            id3 = Identidade(),
            id4 = Identidade(),
            id5 = Identidade(),
            id6 = Identidade(),
            id7 = Identidade(),
            id8 = Identidade(),
            id9 = Identidade();
          List<Identidade> gotmyid = [id1, id2, id3, id4, id5, id6, id7, id8, id9];
          List<Identidade> res = [];
          for (int i = 0; i < 9; i++) {
            if(idades43[i] < 18) {
              gotmyid[i].nome = nomes43[i]; 
              gotmyid[i].idade = idades43[i];
              res.add(gotmyid[i]);
            }
          }
          for (int i = 0; i < res.length; i++) {
            print("${res[i].nome}. ${res[i].idade} anos.");
          }
        }
        break;
      case 44:
        {
          List<String> nomes44 = [];
          List<String> sexos44 = [];
          List<double> salarios44 = [];
          int i = 0;
          while (i < 5) {
            print("Insira o nome da pessoa ${i + 1}: ");
            String? input44a = stdin.readLineSync();
            print("Insira o sexo da pessoa ${i + 1}: [H/M]");
            String? input44b = stdin.readLineSync();
            print("Insira o salário da pessoa ${i + 1}: ");
            String? input44c = stdin.readLineSync();
            try {
            if ((input44a != null) && (input44b != null) && (input44c != null)) {
              String temp1 = input44a;
              String temp2 = input44b;
              nomes44.add(temp1);
              sexos44.add(temp2);
              salarios44.add(double.parse(input44c));
              i++;
            }} catch(e) {
              falhou(e);
            }
          }
          Funcionario f1 = Funcionario(),
            f2 = Funcionario(),
            f3 = Funcionario(),
            f4 = Funcionario(),
            f5 = Funcionario();
          List<Funcionario> torcida_jovem_do_gremio = [f1, f2, f3, f4, f5];
          List<Funcionario> divas_pop = [];
          for (int i = 0; i < 5; i++) {
            if ((sexos44[i] == 'M') && (salarios44[i] > 5000.0)) {
              torcida_jovem_do_gremio[i].nome = nomes44[i];
              torcida_jovem_do_gremio[i].sexo = sexos44[i];
              torcida_jovem_do_gremio[i].salario = salarios44[i];
              divas_pop.add(torcida_jovem_do_gremio[i]);
            }
          }
          for (int i = 0; i < divas_pop.length; i++) {
            print("${divas_pop[i].nome}. ${divas_pop[i].sexo}. R\$${divas_pop[i].salario}.");
          }
        }
        break;
      default:
        print("Opção inválida ou exercício não implementado.");
    }
    if (op != 0) {
      print("Deseja consultar outro exercício? [s/n]");
      String? resposta = stdin.readLineSync();
      while ((resposta != 'n' && resposta != 's')) {
        print("Insira uma resposta válida: [s/n]");
        resposta = stdin.readLineSync();
      }
      if (resposta == 'n') {
        op = 0;
        print("Obrigado por usar");
      }
    }
  } while (op != 0);
}
