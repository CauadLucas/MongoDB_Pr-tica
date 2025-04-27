# MongoDB_Prática
Repositório criado na aula de 23/04 para a criação da imagem e container do MongoDB e a criação de um sistema de gerenciamento no MongoDB, com os comandos usados para a sua criação

# Exercício 1 - Inserindo Dados

## 1.1 Clientes: Comando para inserir os seguintes clientes na coleção client:

```Javascript
db.Sistema.insertMany([
{
  "full_name": "Maria Silva",
  "cpf": "12345678901",
  "email": "maria.silva@email.com",
  "phone": "11987654321",
  "address": "Rua das Flores, 123",
  "city": "São Paulo",
  "state": "SP",
  "zip_code": "01001000",
  "created_by": "user_id_do_admin_1",
  "enterprise": null,
  "cnpj_enterprise": null,
  "description": "Cliente individual"
},
{
  "full_name": "Empresa Soluções Ltda",
  "cpf": null,
  "email": "contato@solucoes.com.br",
  "phone": "21998765432",
  "address": "Avenida Principal, 456",
  "city": "Rio de Janeiro",
  "state": "RJ",
  "zip_code": "20010020",
  "created_by": "user_id_do_manager_2",
  "enterprise": "Soluções Ltda",
  "cnpj_enterprise": "12345678000190",
  "description": "Cliente corporativo"
}]);
```

## 1.2 Processos: Comandos para inserir os seguintes processos para os clientes na coleção client_processes:

```Javascript
db.Sistema.insertMany([
{
  "client_id": "680eb6ce653df6d2aece74a7",
  "number": "PROC-2023-001",
  "value": 1500.00,
  "status": "ativo",
  "class": "Cobrança",
  "description": "Processo de cobrança referente a fatura em aberto.",
  "created_at": ISODate("2023-10-26T10:00:00Z")
},
{
  "client_id": "680eb6ce653df6d2aece74a8",
  "number": "PROC-2023-002",
  "value": 5500.50,
  "status": "em análise",
  "class": "Contratual",
  "description": "Análise de contrato de prestação de serviços.",
  "created_at": ISODate("2023-11-15T14:30:00Z")
}]);
```
