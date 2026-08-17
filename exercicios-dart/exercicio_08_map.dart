/* Crie um Map<String, dynamic> chamado consulta com as chaves:

id (int)

paciente (String)

medico (String)

valor (double)

status (String)

telefone (null inicialmente)

Depois:

Imprima paciente, médico e valor.

Atualize status para confirmada.

Atualize telefone para um número válido.

Percorra o map com forEach imprimindo chave => valor. */

void main() {
  Map<String, dynamic> consulta = {
    "id": 1,
    "Paciente": "Paciente da Silva",
    "Medico": "Medico dos Santos",
    "Valor": 350.50,
    "Status": 'Não confirmada',
    "Telefone": null,
  };

  print(consulta["Paciente"]);
  print(consulta["Medico"]);
  print(consulta["Valor"]);

  consulta['Status'] = "confirmada";
  consulta['Telefone'] = "(11) 98765-4321";

  consulta.forEach((chave, valor) {
 print('$chave => $valor');
 });
}
