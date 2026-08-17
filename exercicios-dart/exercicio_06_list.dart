/* Crie uma List<String> com status: agendada, confirmada, cancelada.

Crie uma List<double> com pelo menos 4 valores de consultas.

Percorra a lista de status e imprima uma mensagem para cada item.

Adicione um novo valor à lista de preços.

Filtre e imprima apenas valores >= 300.

Imprima a quantidade total de preços. */

void main() {
  List<String> status = ['agendada', 'confirmada', 'cancelada'];
  List<double> valores = [200.0, 350.5, 400, 155.45];

  for (final item in status) {
    print('Status atual: $item');
  }

  valores.add(100.50);

  List<double> caras = valores.where((v) => v >= 300).toList();
  print(caras);
  print(valores.length);
}
