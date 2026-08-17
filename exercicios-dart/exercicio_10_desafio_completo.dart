
enum StatusConsulta { agendada, confirmada, cancelada, realizada }

class Paciente {
  final String nome;
  final int idade;
  final String? telefone;

  Paciente({
    required this.nome,
    required this.idade,
    this.telefone,
  });
}

class Consulta {
  final String especialidade;
  final Paciente paciente;
  final DateTime data;
  final double valor;
  StatusConsulta status;
  final bool retorno;
  final num desconto;

  Consulta({
    required this.especialidade,
    required this.paciente,
    required this.data,
    required this.valor,
    this.status = StatusConsulta.agendada,
    this.retorno = false,
    this.desconto = 0,
  });

  double get valorFinal => valor - desconto;

  ({String paciente, double valor}) get resumo =>
      (paciente: paciente.nome, valor: valorFinal);

  void confirmar() => status = StatusConsulta.confirmada;
  void cancelar() => status = StatusConsulta.cancelada;

  @override
  String toString() {
    final dataFmt =
        '${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}';
    return '$especialidade - ${paciente.nome} - $dataFmt - '
        'R\$${valorFinal.toStringAsFixed(2)} - status: ${status.name}';
  }
}

void main() {
  final paciente1 = Paciente(
    nome: 'Ana Souza',
    idade: 34,
    telefone: '(11) 98888-1234',
  );

  final paciente2 = Paciente(
    nome: 'Carlos Lima',
    idade: 58,
    telefone: null, 
  );


  final List<Consulta> consultas = [
    Consulta(
      especialidade: 'Cardiologia',
      paciente: paciente1,
      data: DateTime(2026, 8, 20),
      valor: 250.0,
      desconto: 20,
    ),
    Consulta(
      especialidade: 'Ortopedia',
      paciente: paciente2,
      data: DateTime(2026, 8, 22),
      valor: 180.0,
      retorno: true,
    ),
    Consulta(
      especialidade: 'Cardiologia',
      paciente: paciente1,
      data: DateTime(2026, 9, 1),
      valor: 200.0,
    ),
  ];


  final Set<String> especialidades =
      consultas.map((c) => c.especialidade).toSet();


  final Map<String, dynamic> resumoPaciente = {
    'nome': paciente1.nome,
    'idade': paciente1.idade,
    'telefone': paciente1.telefone ?? 'não informado',
  };


  consultas[0].confirmar();
  consultas[1].cancelar();

  print('--- Ações realizadas ---');
  print('Consulta 1 (confirmada): ${consultas[0]}');
  print('Consulta 2 (cancelada): ${consultas[1]}');
  print('');


  final int quantidade = consultas.length;
  final double somaValores =
      consultas.fold(0.0, (double acc, Consulta c) => acc + c.valorFinal);

  print('=== RELATÓRIO FINAL ===');
  print('Quantidade de consultas: $quantidade');
  print('Soma dos valores: R\$${somaValores.toStringAsFixed(2)}');
  print('');

  print('Status de cada consulta:');
  for (final Consulta c in consultas) {
    print(' - ${c.paciente.nome} (${c.especialidade}): ${c.status.name}');
  }
  print('');

  print('Especialidades únicas: ${especialidades.join(', ')}');
  print('');

  print('Dados do paciente (Map):');
  resumoPaciente.forEach((chave, valor) => print(' - $chave: $valor'));
  print('');

  print('Resumos rápidos (Record):');
  for (final Consulta c in consultas) {
    final resumo = c.resumo;
    print(' - paciente: ${resumo.paciente}, valor: R\$${resumo.valor.toStringAsFixed(2)}');
  }
}