

// ignore_for_file: dead_code

void main() {
  bool medicoAtivo = true;
  bool consultaAgendada = false;
  bool pacienteTemTelefone = true;
  bool pagamentoConfirmado = true;

  print('Médico ativo? $medicoAtivo');
  print("A consulta foi agendada? $consultaAgendada");
  print("O paciente tem telefone? $pacienteTemTelefone");
  print('O pagamento foi confirmado? $pagamentoConfirmado');

  if (consultaAgendada && medicoAtivo) {
    print("Consulta confirmada");
  }

  if (!pacienteTemTelefone) {
    print("Contato faltante!");
  }

  if (pagamentoConfirmado) {
    print("Liberado para atendimento");
  }
}

/* 
Em seguida:

Imprima cada variável.

Só permita confirmar a consulta se medicoAtivo && consultaAgendada.

Se pacienteTemTelefone for false, imprima aviso de contato faltante.

Se pagamentoConfirmado for true, imprima "Liberado para atendimento". */
