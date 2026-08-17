void main() {
  int idPaciente = 123;
  int idMedico = 456;
  int idconsulta = 1;
  int idadePaciente = 21;
  int qtdConsultasMes = 4;

  int somaIds = idPaciente + idMedico;
  int proximaConsulta = idconsulta + 1;

  int dobroConsultas = qtdConsultasMes * 2;

  print("Id do paciente + Id do médico: $somaIds");
  print("Próximo id de consulta: $proximaConsulta");
  if (idadePaciente >= 60) {
    print("Paciente prioritário");
  } else {
    print("Paciente comum");
  }
  print("Dobro da quantidade de consultas: $dobroConsultas");
}

/*Calcule e imprima:

Soma de idPaciente + idMedico.

Próximo ID de consulta (idConsulta + 1).

Se idadePaciente >= 60, imprima "Paciente prioritário", senão "Paciente comum".

O dobro de quantidadeConsultasMes.*/
