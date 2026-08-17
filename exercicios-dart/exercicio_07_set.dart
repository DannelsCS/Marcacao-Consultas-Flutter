/* Crie um Set<String> de especialidades com: Cardiologia, Pediatria, Dermatologia.

Tente adicionar Cardiologia novamente.

Adicione Ortopedia.

Imprima o conjunto final.

Verifique se Pediatria existe com contains.

Imprima a quantidade de especialidades únicas. */

void main() {
  Set<String> especialidade = {"Cardiologia", 'Pediatria', 'Dermatologia'};

  especialidade.add('Cardiologia');
  especialidade.add('Ortopedia');

  print(especialidade);

  print("Contém pediatria? ${especialidade.contains("Pediatria")}");
  print("Quantidade de especialidades: ${especialidade.length}");
}
