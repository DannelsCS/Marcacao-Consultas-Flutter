

// ignore_for_file: unnecessary_null_comparison

/* Crie uma variável num chamada registro e atribua um inteiro; depois atribua um decimal e imprima as duas situações.

Crie String? telefone iniciando como null.

Crie String? observacoes com um texto.

Imprima telefone com ?? 'não informado'.

Se observacoes != null, imprima o tamanho do texto.

 */

void main() {
  num registro = 10;
  print(registro);

  registro = 50.5;
  print(registro);

  String? telefone;
  String? observacoes = 'Consulta de rotina';

  String telefoneExibicao = telefone ?? 'Telefone não informado';

  print(telefoneExibicao);
  if (observacoes != null) {
    print(observacoes.length);
  }
}
