void main() {
  String nomePaciente = "Paciente dos Santos";
  String nomeMedico = "Médico da Silva";
  String especialidade = "Culinaria italiana";
  String emailPaciente = "Paciente@email.com";

  print(
    "Nome do paciente: $nomePaciente | Nome do médico: $nomeMedico | Especialidade: $especialidade | Email do paciente: $emailPaciente",
  );
  print(nomePaciente.toUpperCase());
  print(emailPaciente.length);
  print(emailPaciente.contains("@"));
}
