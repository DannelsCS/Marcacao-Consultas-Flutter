/* Crie um enum StatusConsulta { agendada, confirmada, cancelada }.

Crie uma data DateTime para uma consulta.

Crie um Record nomeado com paciente, medico e valor.

Imprima:

dia/mês/ano da consulta;

status atual (comece em agendada);

dados do record.

Mude o status para confirmada e imprima novamente.

Some 7 dias à data e imprima a data de retorno. */

enum StatusConsulta { agendada, confirmada, cancelada }

void main() {
  DateTime dataConsulta = DateTime(2026, 8, 10);

  ({String paciente, String medico, double valor}) record = (
    paciente: "Paciente da Silva",
    medico: "Dr. Médico dos Santos",
    valor: 350.0,
  );

  print("Data da consulta: $dataConsulta");

  StatusConsulta status = StatusConsulta.agendada;

  print(status.name);

  print(record.paciente);
  print(record.medico);
  print(record.valor);

  status = StatusConsulta.confirmada;

  print(status.name);

  DateTime proxConsulta = dataConsulta.add(Duration(days: 7));

  print(proxConsulta);
}
