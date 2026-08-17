// ignore_for_file: unnecessary_null_comparison, dead_null_aware_expression, dead_code

void main() {
  String? telefone; //Começa como null
  String? observacoes = null;

  print(telefone);
  print(observacoes);

  telefone = '(11) 98765-4321';
  observacoes = 'Consulta de rotina';

  //Operador ?? (Valor padrão se for null)
  String telefoneExibicao = telefone ?? 'Telefone não informado';
  String obsExibicao = observacoes ?? 'Sem observações';

  print(telefoneExibicao);
  print(obsExibicao);

  // verificação explícita

  if (telefone != null) {
    print("Telefone informado com ${telefone.length} caracteres");
  }
}
