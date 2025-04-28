# Exercício 1 - Inserindo Dados

## 1.1 Clientes: Inserido os seguintes clientes na coleção client: OK

```Javascript
{
  _id: ObjectId('680ec54d07c60f619a99b8f1'),
  full_name: 'Maria Silva',
  cpf: '12345678901',
  email: 'maria.silva@email.com',
  phone: '11987654321',
  address: 'Rua das Flores, 123',
  city: 'São Paulo',
  state: 'SP',
  zip_code: '01001000',
  created_by: 'user_id_do_admin_1',
  enterprise: null,
  cnpj_enterprise: null,
  description: 'Cliente individual'
}
{
  _id: ObjectId('680ec54d07c60f619a99b8f2'),
  full_name: 'Empresa Soluções Ltda',
  cpf: null,
  email: 'contato@solucoes.com.br',
  phone: '21998765432',
  address: 'Avenida Principal, 456',
  city: 'Rio de Janeiro',
  state: 'RJ',
  zip_code: '20010020',
  created_by: 'user_id_do_manager_2',
  enterprise: 'Soluções Ltda',
  cnpj_enterprise: '12345678000190',
  description: 'Cliente corporativo'
}
```

## 1.2 Processos: Inserido os seguintes processos para os clientes na coleção client_processes: OK

```Javascript
{
  _id: ObjectId('680ec60fb6339ee89a37c6f3'),
  client_id: '680ec54d07c60f619a99b8f1',
  number: 'PROC-2023-001',
  value: 1500,
  status: 'ativo',
  class: 'Cobrança',
  description: 'Processo de cobrança referente a fatura em aberto.',
  created_at: 2023-10-26T10:00:00.000Z
}
{
  _id: ObjectId('680ec60fb6339ee89a37c6f4'),
  client_id: '680ec54d07c60f619a99b8f2',
  number: 'PROC-2023-002',
  value: 5500.5,
  status: 'em análise',
  class: 'Contratual',
  description: 'Análise de contrato de prestação de serviços.',
  created_at: 2023-11-15T14:30:00.000Z
}
```

## 1.3 Eventos: Inserido os seguintes eventos na coleção events: OK

```Javascript
{
  _id: ObjectId('680ec60fb6339ee89a37c6f3'),
  client_id: '680ec54d07c60f619a99b8f1',
  number: 'PROC-2023-001',
  value: 1500,
  status: 'ativo',
  class: 'Cobrança',
  description: 'Processo de cobrança referente a fatura em aberto.',
  created_at: 2023-10-26T10:00:00.000Z
}
{
  _id: ObjectId('680ec60fb6339ee89a37c6f4'),
  client_id: '680ec54d07c60f619a99b8f2',
  number: 'PROC-2023-002',
  value: 5500.5,
  status: 'em análise',
  class: 'Contratual',
  description: 'Análise de contrato de prestação de serviços.',
  created_at: 2023-11-15T14:30:00.000Z
}
{
  _id: ObjectId('680ec765c4d2c283cc7b314f'),
  client_id: '680ec54d07c60f619a99b8f1',
  enterprise: null,
  cnpj_enterprise: null,
  freight: 50,
  amount_of_cleaning: 2,
  cleaning_date: '2023-12-10',
  cost_of_each_cleanin: 200,
  proposal_doc: 'PROP-MS-001.pdf',
  number_proposal: 'PROP-2023-001-MS',
  proposal_expiration_date: 2023-11-30T23:59:59.000Z,
  created_proposal_by: 'user_id_do_sales_3',
  address: 'Rua das Camélias, 789',
  city: 'São Paulo',
  state: 'SP',
  zip_code: '02002000',
  proposal_status: 'accepted'
}
{
  _id: ObjectId('680ec765c4d2c283cc7b3150'),
  client_id: '680ec54d07c60f619a99b8f2',
  enterprise: 'Soluções Ltda',
  cnpj_enterprise: '12345678000190',
  freight: 120,
  amount_of_cleaning: 5,
  cleaning_date: '2024-01-15',
  cost_of_each_cleanin: 150,
  proposal_doc: 'PROP-ESL-002.pdf',
  number_proposal: 'PROP-2023-002-ESL',
  proposal_expiration_date: 2023-12-20T23:59:59.000Z,
  created_proposal_by: 'user_id_do_sales_3',
  address: 'Avenida das Palmeiras, 1011',
  city: 'Rio de Janeiro',
  state: 'RJ',
  zip_code: '22020030',
  proposal_status: 'pending accepted'
}
```

# Exercício 2: Consultando Dados

## 2.1 Clientes em São Paulo: Encontrando todos os clientes que estão localizados na cidade de "São Paulo". OK

```Javascript
{
  _id: ObjectId('680ec54d07c60f619a99b8f1'),
  full_name: 'Maria Silva',
  cpf: '12345678901',
  email: 'maria.silva@email.com',
  phone: '11987654321',
  address: 'Rua das Flores, 123',
  city: 'São Paulo',
  state: 'SP',
  zip_code: '01001000',
  created_by: 'user_id_do_admin_1',
  enterprise: null,
  cnpj_enterprise: null,
  description: 'Cliente individual'
}
```

## 2.2 Processos com Valor Superior a: Listando todos os processos na coleção client_processes cujo valor (value) seja maior que 2000. OK

```Javascript
{
  _id: ObjectId('680ec60fb6339ee89a37c6f4'),
  client_id: '680ec54d07c60f619a99b8f2',
  number: 'PROC-2023-002',
  value: 5500.5,
  status: 'em análise',
  class: 'Contratual',
  description: 'Análise de contrato de prestação de serviços.',
  created_at: 2023-11-15T14:30:00.000Z
}
```

## 2.3 Eventos com Proposta Pendente ou Aceita: Encontrando todos os eventos onde o proposal_status seja "pending accepted" ou "accepted". OK

```Javascript
{
  _id: ObjectId('680ec765c4d2c283cc7b314f'),
  client_id: '680ec54d07c60f619a99b8f1',
  enterprise: null,
  cnpj_enterprise: null,
  freight: 50,
  amount_of_cleaning: 2,
  cleaning_date: '2023-12-10',
  cost_of_each_cleanin: 200,
  proposal_doc: 'PROP-MS-001.pdf',
  number_proposal: 'PROP-2023-001-MS',
  proposal_expiration_date: 2023-11-30T23:59:59.000Z,
  created_proposal_by: 'user_id_do_sales_3',
  address: 'Rua das Camélias, 789',
  city: 'São Paulo',
  state: 'SP',
  zip_code: '02002000',
  proposal_status: 'accepted'
}
{
  _id: ObjectId('680ec765c4d2c283cc7b3150'),
  client_id: '680ec54d07c60f619a99b8f2',
  enterprise: 'Soluções Ltda',
  cnpj_enterprise: '12345678000190',
  freight: 120,
  amount_of_cleaning: 5,
  cleaning_date: '2024-01-15',
  cost_of_each_cleanin: 150,
  proposal_doc: 'PROP-ESL-002.pdf',
  number_proposal: 'PROP-2023-002-ESL',
  proposal_expiration_date: 2023-12-20T23:59:59.000Z,
  created_proposal_by: 'user_id_do_sales_3',
  address: 'Avenida das Palmeiras, 1011',
  city: 'Rio de Janeiro',
  state: 'RJ',
  zip_code: '22020030',
  proposal_status: 'pending accepted'
}
```

## 2.4 Clientes Corporativos: Listando todos os clientes onde o campo enterprise não seja null. Exiba apenas os campos full_name e cnpj_enterprise. OK

```Javascript
{
  full_name: 'Empresa Soluções Ltda',
  cnpj_enterprise: '12345678000190'
}
```

## 2.5 Processos de Cobrança: Encontrando todos os processos cuja class seja "Cobrança" e ordene-os por valor em ordem decrescente. OK

```Javascript
{
  _id: ObjectId('680ec60fb6339ee89a37c6f3'),
  client_id: '680ec54d07c60f619a99b8f1',
  number: 'PROC-2023-001',
  value: 1500,
  status: 'ativo',
  class: 'Cobrança',
  description: 'Processo de cobrança referente a fatura em aberto.',
  created_at: 2023-10-26T10:00:00.000Z
}
```

# Exercício 3: Atualizando Dados

## 3.1 Atualizar Status do Processo: Alterando o status do processo com number "PROC-2023-001" para "concluído". Ok 

```Javascript
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
// Para verificar se a inserção deu certo:
db.SistemaMongo.find( { number: 'PROC-2023-001' } );
{
  _id: ObjectId('680ec60fb6339ee89a37c6f3'),
  client_id: '680ec54d07c60f619a99b8f1',
  number: 'PROC-2023-001',
  value: 1500,
  status: 'concluído',
  class: 'Cobrança',
  description: 'Processo de cobrança referente a fatura em aberto.',
  created_at: 2023-10-26T10:00:00.000Z
}
```

## 3.2 Adicionar Observação ao Evento: Adicionando o campo note_doc com o valor "OBS-MS-001.txt" ao evento de Maria Silva. OK

```Javascript
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
// Para verificar se a inserção deu certo:
db.SistemaMongo.find( { note_doc: "OBS-MS-001.txt" } );
{
  _id: ObjectId('680ec54d07c60f619a99b8f1'),
  full_name: 'Maria Silva',
  cpf: '12345678901',
  email: 'maria.silva@email.com',
  phone: '11987654321',
  address: 'Rua das Flores, 123',
  city: 'São Paulo',
  state: 'SP',
  zip_code: '01001000',
  created_by: 'user_id_do_admin_1',
  enterprise: null,
  cnpj_enterprise: null,
  description: 'Cliente individual',
  note_doc: 'OBS-MS-001.txt'
}
```

## 3.3 Incrementar Quantidade de Limpezas: Aumentando em 1 a amount_of_cleaning para o evento da Empresa Soluções Ltda. OK

```Javascript
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
// Para verificar se a inserção deu certo:
db.SistemaMongo.find ( { enterprise: 'Soluções Ltda' } )
{
  _id: ObjectId('680ec765c4d2c283cc7b3150'),
  client_id: '680ec54d07c60f619a99b8f2',
  enterprise: 'Soluções Ltda',
  cnpj_enterprise: '12345678000190',
  freight: 120,
  amount_of_cleaning: 6,
  cleaning_date: '2024-01-15',
  cost_of_each_cleanin: 150,
  proposal_doc: 'PROP-ESL-002.pdf',
  number_proposal: 'PROP-2023-002-ESL',
  proposal_expiration_date: 2023-12-20T23:59:59.000Z,
  created_proposal_by: 'user_id_do_sales_3',
  address: 'Avenida das Palmeiras, 1011',
  city: 'Rio de Janeiro',
  state: 'RJ',
  zip_code: '22020030',
  proposal_status: 'pending accepted'
}
```

# Exercício 4: Excluindo Dados

## 4.1 Remover Processo: Removendo o processo com number "PROC-2023-002".

```Javascript
{
  acknowledged: true,
  deletedCount: 1
}
// Para verificar se a inserção deu certo:
db.SistemaMongo.find()
{
  _id: ObjectId('680ec60fb6339ee89a37c6f3'),
  client_id: '680ec54d07c60f619a99b8f1',
  number: 'PROC-2023-001',
  value: 1500,
  status: 'concluído',
  class: 'Cobrança',
  description: 'Processo de cobrança referente a fatura em aberto.',
  created_at: 2023-10-26T10:00:00.000Z
}
{
  _id: ObjectId('680ec765c4d2c283cc7b314f'),
  client_id: '680ec54d07c60f619a99b8f1',
  enterprise: null,
  cnpj_enterprise: null,
  freight: 50,
  amount_of_cleaning: 2,
  cleaning_date: '2023-12-10',
  cost_of_each_cleanin: 200,
  proposal_doc: 'PROP-MS-001.pdf',
  number_proposal: 'PROP-2023-001-MS',
  proposal_expiration_date: 2023-11-30T23:59:59.000Z,
  created_proposal_by: 'user_id_do_sales_3',
  address: 'Rua das Camélias, 789',
  city: 'São Paulo',
  state: 'SP',
  zip_code: '02002000',
  proposal_status: 'accepted'
}
{
  _id: ObjectId('680ec765c4d2c283cc7b3150'),
  client_id: '680ec54d07c60f619a99b8f2',
  enterprise: 'Soluções Ltda',
  cnpj_enterprise: '12345678000190',
  freight: 120,
  amount_of_cleaning: 6,
  cleaning_date: '2024-01-15',
  cost_of_each_cleanin: 150,
  proposal_doc: 'PROP-ESL-002.pdf',
  number_proposal: 'PROP-2023-002-ESL',
  proposal_expiration_date: 2023-12-20T23:59:59.000Z,
  created_proposal_by: 'user_id_do_sales_3',
  address: 'Avenida das Palmeiras, 1011',
  city: 'Rio de Janeiro',
  state: 'RJ',
  zip_code: '22020030',
  proposal_status: 'pending accepted'
}
```

## 4.2 Remover Clientes sem CNPJ: Removendo todos os clientes onde o campo cnpj_enterprise seja null.

```Javascript
{
  acknowledged: true,
  deletedCount: 1
}
// Para verificar se a inserção deu certo:
db.SistemaMongo.find()
{
  _id: ObjectId('680ec54d07c60f619a99b8f2'),
  full_name: 'Empresa Soluções Ltda',
  cpf: null,
  email: 'contato@solucoes.com.br',
  phone: '21998765432',
  address: 'Avenida Principal, 456',
  city: 'Rio de Janeiro',
  state: 'RJ',
  zip_code: '20010020',
  created_by: 'user_id_do_manager_2',
  enterprise: 'Soluções Ltda',
  cnpj_enterprise: '12345678000190',
  description: 'Cliente corporativo'
}
```

# Exercício 5: Criando Índices

## 5.1 Índice no Nome do Cliente: Criando um índice no campo full_name da coleção client.

```Javascript
full_name_1
[
  { v: 2, key: { _id: 1 }, name: '_id_' },
  { v: 2, key: { full_name: 1 }, name: 'full_name_1' }
]
```

## 5.2 Visualizar Índices: Listando todos os índices da coleção client.

```Javascript
[
  { v: 2, key: { _id: 1 }, name: '_id_' },
  { v: 2, key: { full_name: 1 }, name: 'full_name_1' }
]
```



