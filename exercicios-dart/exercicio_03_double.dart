void main() {
  double n1 = 180.0;
  double n2 = 350.5;
  double n3 = 500.0;

  double somaTotal = n1 + n2 + n3;
  double media = somaTotal / 3;
  double valorDesconto = n3 * 0.9;

  print(somaTotal.toStringAsFixed(2));
  print(media.toStringAsFixed(2));
  print(valorDesconto.toStringAsFixed(2));
  print(n1.toStringAsFixed(2));
  print(n2.toStringAsFixed(2));
  print(n3.toStringAsFixed(2));
}

/* Declare três valores de consulta (double): por exemplo 180.0, 350.5 e 500.0.

Calcule e imprima:

Soma total.

Média.

Valor com 10% de desconto para a consulta mais cara.

Todos os valores formatados com 2 casas decimais. */
