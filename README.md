# MongoDB_Prática

Repositório criado na aula de 23/04 para a criação da imagem e container do MongoDB e a criação de um sistema de gerenciamento no MongoDB, com os comandos usados para a sua criação

# Exercício 1 - Inserindo Dados

## 1.1 Clientes: Comando para inserir os seguintes clientes na coleção client:

```Javascript
db.SistemaMongo.insertMany([
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
db.SistemaMongo.insertMany([
{
  "client_id": "680ec54d07c60f619a99b8f1",
  "number": "PROC-2023-001",
  "value": 1500.00,
  "status": "ativo",
  "class": "Cobrança",
  "description": "Processo de cobrança referente a fatura em aberto.",
  "created_at": ISODate("2023-10-26T10:00:00Z")
},
{
  "client_id": "680ec54d07c60f619a99b8f2",
  "number": "PROC-2023-002",
  "value": 5500.50,
  "status": "em análise",
  "class": "Contratual",
  "description": "Análise de contrato de prestação de serviços.",
  "created_at": ISODate("2023-11-15T14:30:00Z")
}]);
```

## 1.3 Eventos: Comandos para inserir os seguintes eventos na coleção events:

```Javascript
db.SistemaMongo.insertMany([
{
  "client_id": "680ec54d07c60f619a99b8f1",
  "enterprise": null,
  "cnpj_enterprise": null,
  "freight": 50.00,
  "amount_of_cleaning": 2,
  "cleaning_date": "2023-12-10",
  "cost_of_each_cleanin": 200.00,
  "proposal_doc": "PROP-MS-001.pdf",
  "number_proposal": "PROP-2023-001-MS",
  "proposal_expiration_date": ISODate("2023-11-30T23:59:59Z"),
  "created_proposal_by": "user_id_do_sales_3",
  "address": "Rua das Camélias, 789",
  "city": "São Paulo",
  "state": "SP",
  "zip_code": "02002000",
  "proposal_status": "accepted"
},
{
  "client_id": "680ec54d07c60f619a99b8f2",
  "enterprise": "Soluções Ltda",
  "cnpj_enterprise": "12345678000190",
  "freight": 120.00,
  "amount_of_cleaning": 5,
  "cleaning_date": "2024-01-15",
  "cost_of_each_cleanin": 150.00,
  "proposal_doc": "PROP-ESL-002.pdf",
  "number_proposal": "PROP-2023-002-ESL",
  "proposal_expiration_date": ISODate("2023-12-20T23:59:59Z"),
  "created_proposal_by": "user_id_do_sales_3",
  "address": "Avenida das Palmeiras, 1011",
  "city": "Rio de Janeiro",
  "state": "RJ",
  "zip_code": "22020030",
  "proposal_status": "pending accepted"
}]);

// Para verificar se a inserção deu certo:
db.SistemaMongo.find();
```

# Exercício 2: Consultando Dados

## 2.1 Clientes em São Paulo: Encontrando todos os clientes que estão localizados na cidade de "São Paulo".

```Javascript
db.SistemaMongo.find({ city: "São Paulo"});
```

## 2.2 Processos com Valor Superior a: Listando todos os processos na coleção client_processes cujo valor (value) seja maior que 2000.

```Javascript
db.SistemaMongo.find({ value: { "$gt": 2000 } });
```

## 2.3 Eventos com Proposta Pendente ou Aceita: Encontrando todos os eventos onde o proposal_status seja "pending accepted" ou "accepted".

```Javascript
db.SistemaMongo.find({
  $or: [
    { proposal_status: "pending accepted" },
    { proposal_status: "accepted" }
  ]
});
```

## 2.4 Clientes Corporativos: Listando todos os clientes onde o campo enterprise não seja null. Exiba apenas os campos full_name e cnpj_enterprise.

```Javascript
db.SistemaMongo.find(
  { enterprise: { $ne: null } },
  { full_name: 1, cnpj_enterprise: 1, _id: 0 }
);
```

## 2.5 Processos de Cobrança: Encontrando todos os processos cuja class seja "Cobrança" e ordene-os por valor em ordem decrescente.

```Javascript
db.SistemaMongo.find({ class: { $eq: "Cobrança" } }).sort({ valor: -1 });
```

# Exercício 3: Atualizando Dados

## 3.1 Atualizar Status do Processo: Alterando o status do processo com number "PROC-2023-001" para "concluído".

```Javascript
db.SistemaMongo.updateOne(
  { number: "PROC-2023-001" },
  { $set: { status: "concluído" } }
);
```

## 3.2 Adicionar Observação ao Evento: Adicionando o campo note_doc com o valor "OBS-MS-001.txt" ao evento de Maria Silva.

```Javascript
db.SistemaMongo.updateOne(
{ full_name: 'Maria Silva' },
{ $set: { note_doc: "OBS-MS-001.txt" } }
);
```

## 3.3 Incrementar Quantidade de Limpezas: Aumentando em 1 a amount_of_cleaning para o evento da Empresa Soluções Ltda.

```Javascript
db.SistemaMongo.updateOne(
  { enterprise: 'Soluções Ltda' }, 
  { $inc: { amount_of_cleaning: 1 } }
);
```

# Exercício 4: Excluindo Dados

## 4.1 Remover Processo: Removendo o processo com number "PROC-2023-002".

```Javascript
db.SistemaMongo.deleteOne({ number: 'PROC-2023-002' });
```

## 4.2 Remover Clientes sem CNPJ: Removendo todos os clientes onde o campo cnpj_enterprise seja null.

```Javascript
db.SistemaMongo.deleteOne({ cnpj_enterprise: { $eq: null } });
```

# Exercício 5: Criando Índices

## 5.1 Índice no Nome do Cliente: Criando um índice no campo full_name da coleção client.

```Javascript
db.SistemaMongo.createIndex( { full_name: 1 } );
```

## 5.2 Visualizar Índices: Listando todos os índices da coleção client.

```Javascript
db.SistemaMongo.getIndexes();
```




