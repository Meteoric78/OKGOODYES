import 'dart:io';
import 'dart:math';

/*Input com null safety
  print("");
          print("");
          String? x = stdin.readLineSync();
          if (( != null) && ( != null)) {
            var = .parse();
            var = .parse();
          }. */
//mensagem de erro para input null.
void falhou() {
  print("Não pode haver campo nulo.");
}
//1 e 2.
double calcular_salario(salario, [percent = 25.00]) => salario + (salario * percent) / 100.00;

//3 todo output na main ao invés daqui.
void calcular_idade(int birth, [int current = 2022]) {
  int anos = current - birth;
  int meses = anos * 12;
  int dias = meses * 30;
  int semanas = meses * 4;
  print("Idade,\nem anos: $anos\nem meses: $meses\nem dias: $dias\nem semanas: $semanas.");
}

//4.
double racao_restante(peso,  porcao) => peso - 5.0 * porcao * 2.0;

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
int square_diff(a, b) => (a-b) * (a-b);

//8.
double real_dolar(r, cot) => r / cot;

//9.
square_sum(a, b, c) => (a+b+c) * (a+b+c);

//10.
double soma(a, b) => a + b;
double sub(a, b) => a - b;
double multi(a, b) => a * b;
double div(a, b) => a / b;

//11.
double volume_esfera(raio) =>  (4 / 3) * 3.14159 * (raio) * (raio) * (raio); 

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
  for (int i = 0; i < array.length ; i++) {
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
void sort_mf(p, womyn, myn, idades) {
  for (int i = 0; i < 5; i++) {
    if (p[i].sexo == 'mulher') {
      womyn.add(p[i]);
    }
    if (p[i].sexo == 'homem') {
      myn.add(p[i]);
    }
    idades.add(p[i].idade);
    print("Pessoa ${i+1}: ${p[i].idade} anos, ${p[i].sexo}.");
  }
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
          if (valor != null) {
            double salario = double.parse(valor);
            double resultado = calcular_salario(salario);
            print("O salario de $salario será reajustado para $resultado.");
          } else {
            print("O salário não pode ser nulo.");
          }
        }
        break;
      case 2:
        {
          print("Informe o salário do funcionário");
          String? valor = stdin.readLineSync();
          print("Informe o valor de reajsute");
          String? ajuste = stdin.readLineSync();
          if ((valor != null) && (ajuste != null)) {
            double salario = double.parse(valor);
            double percent = double.parse(ajuste);
            double resultado = calcular_salario(salario, percent);
            print("O salario de $salario será reajustado para $resultado.");
          } else {
            falhou();
          }
        }
        break;
      case 3:
        {
          print("Informe o ano de nascimento");
          String? nascimento = stdin.readLineSync();
          print("Informe o ano atual");
          String? atual = stdin.readLineSync();
          if ((nascimento != null) && (atual != null)) {
            int birth = int.parse(nascimento);
            int current = int.parse(atual);
            calcular_idade(birth, current);
            
          } else {
            falhou();
          }
        }
        break;
      case 4:
        {
          print("Insira o peso do saco de ração");
          String? peso_i = stdin.readLineSync(); 
          print("Insira a quantidade de ração para cada gato");
          String? porcao_i = stdin.readLineSync();
          if ((peso_i != null) && (porcao_i != null)) {
            double peso = double.parse(peso_i);
            double porcao = double.parse(porcao_i);
            double resultado = racao_restante(peso, porcao);
            print("A ração restante após 5 dias de consumo é $resultado.");
          } else {
            falhou();
          }
        }
        break;
      case 5:
        {
          print("Insira valor a");
          String? a_i = stdin.readLineSync();
          print("Insira valor b");
          String? b_i = stdin.readLineSync();
          if ((a_i != null) && (b_i != null)) {
            double a = double.parse(a_i);
            double b = double.parse(b_i);
            swap(a, b);
            
          } else {
            falhou();
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
          if ((comp_i != null ) && (larg_i != null) && (alt_i != null)) {
            double comp = double.parse(comp_i);
            double larg = double.parse(larg_i);
            double alt = double.parse(alt_i);
            double resultado = calcular_volume(comp, larg, alt);
            print("O volume será $resultado.");
          } else {
            falhou();
          }
        }
        break;
      case 7:
        {
          print("Insira valor A: ");
          String? a_i = stdin.readLineSync();
          print("Insira valor B: ");
          String? b_i = stdin.readLineSync();
          if ((a_i != null) && (b_i != null)) {
            int a = int.parse(a_i);
            int b = int.parse(b_i);
            int resultado = square_diff(a,b);
            print("O quadrado da diferença de $a e $b é $resultado.");
          } else {
            falhou();
          }
        }
        break;
      case 8:
        {
          print("Valor em reais: ");
          String? r_i = stdin.readLineSync();
          print("Cotação atual do dólar");
          String? cot_i = stdin.readLineSync();
          if ((r_i != null) && (cot_i != null)) {
            double r = double.parse(r_i);
            double cot = double.parse(cot_i);
            double resultado = real_dolar(r, cot);
            print("$r reais são $resultado dólares.");
          } else {
            falhou();
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
          if ((a_i != null) && (b_i != null) && (c_i != null)) {
            int a = int.parse(a_i);
            int b = int.parse(b_i);
            int c = int.parse(c_i);
            int resultado = square_sum(a, b, c);
            print("O quadrado da soma de $a, $b, $c é $resultado.");
          } else {
            falhou();
          }
        }
        break;
        case 10: 
          {
            print("Valor a: ");
            String? a_i = stdin.readLineSync();
            print("Valor b:");
            String? b_i = stdin.readLineSync();
            if ((a_i != null) && (b_i != null)) {
              double a = double.parse(a_i);
              double b = double.parse(b_i);
              print("Termos: $a e $b,\nSoma: ${soma(a,b)}\nSubtração: ${sub(a,b)}\nDivisão: ${div(a,b)}\nMultiplicação: ${multi(a,b)}.");
            } else {
              falhou();
            }
          }
          break;
        case 11:
          {
            print("Raio: ");
            String? r_i = stdin.readLineSync();
            double raio = (r_i != null) ? double.parse(r_i) : 0.0;
            print("O volume de uma esfera com raio $raio é ${volume_esfera(raio)}.");
          }
          break;
        case 12:
          {
            print("Insira um número inteiro");
            String? n_i = stdin.readLineSync();
            int n = (n_i != null) ? int.parse(n_i) : 0;
            print("O predecessor e sucessor de $n são, respectivamente: ${n-1} e ${n+1}.");
          }
          break;
        case 13:
          {
            print("Insira a velocidade do carro: ");
            String? v_i = stdin.readLineSync();
            int v = (v_i != null) ? int.parse(v_i) : 0;
            if (v > 80) {
              print("Motorista multado, valor: ${(v-80) * 5} reais.");
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
              } else {
                falhou();
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
                print("Faltam ${18-idade} anos para o alistamento militar.");
              } else {
                print("Se passaram ${idade-18} anos do alistamento militar.");
              }
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
              print("Números sorteados: $numeros\nNúmeros acima de 5: ${over5.length}\nNúmeros divisíveis por 3: ${by3.length}.");
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
              print("O menor preço da lista é ${menorzin(vetor)}, e o maior é ${maiorzin(vetor)}.");
            }
            break;
          case 36:
            {
              List<int> idades = [];
              int i = 0;
              while (i < 10) {
                print("Idade pessoa ${i+1}: ");
                String? in_p = stdin.readLineSync();
                if(in_p != null) {
                  idades.add(int.parse(in_p));
                  i++;
                } else {
                  print("Não envie campo vazio.");
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
              int i = 0;
              Pessoa pessoa1 = Pessoa(), pessoa2 = Pessoa(), pessoa3 = Pessoa(), pessoa4 = Pessoa(), pessoa5 = Pessoa();
              List<Pessoa> people = [pessoa1, pessoa2, pessoa3, pessoa4, pessoa5];
              List<Pessoa> womyn = [];
              List<Pessoa> myn = [];
              List<int> idades = [];
              while (i < 5) {
                print("Insira a idade da pessoa ${i+1}: ");
                String? input37a = stdin.readLineSync();
                print("Insira o sexo da pessoa ${i+1} [homem/mulher]: ");
                String? input37b = stdin.readLineSync();
                if((input37a != null) && (input37b != null)) {
                  people[i].idade = int.parse(input37a);
                  people[i].sexo = input37b;
                  i++;
                } else {
                  print("Não envie campo vazio.");
                }
              }
              sort_mf(people, womyn, myn, idades);
              print("Quantidade de mulheres: ${womyn.length}. Quantidade de homens: ${myn.length}.");
              print("Media de idade do grupo: ${media_vetor(idades)}.");
            }
            break;
      default:
        print("Opção inválida ou não implementada.");
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
