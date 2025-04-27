# Exercício 1 - Inserindo Dados

## 1.1 Clientes: Inserido os seguintes clientes na coleção client:

```Javascript
{
  _id: ObjectId('680afbfb6961eb20b8353420'),
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
  _id: ObjectId('680afbfb6961eb20b8353421'),
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

## 1.2 Processos: Inserido os seguintes processos para os clientes na coleção client_processes:

```Javascript
{
  _id: ObjectId('680afd2f2107163cae5835d7'),
  client_id: '680afbfb6961eb20b8353420',
  number: 'PROC-2023-001',
  value: 1500,
  status: 'ativo',
  class: 'Cobrança',
  description: 'Processo de cobrança referente a fatura em aberto.',
  created_at: 2023-10-26T10:00:00.000Z
}
{
  _id: ObjectId('680afd2f2107163cae5835d8'),
  client_id: '680afbfb6961eb20b8353421',
  number: 'PROC-2023-002',
  value: 5500.5,
  status: 'em análise',
  class: 'Contratual',
  description: 'Análise de contrato de prestação de serviços.',
  created_at: 2023-11-15T14:30:00.000Z
}
```

## 1.3 Eventos: Inserido os seguintes eventos na coleção events:

```Javascript
{
  _id: ObjectId('680afdb096c2741985d11ff1'),
  client_id: '680afbfb6961eb20b8353420',
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
  _id: ObjectId('680afdb096c2741985d11ff2'),
  client_id: '680afbfb6961eb20b8353421',
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

**Ver se precisa adicionar os outros 02 blocos gerados pelo .find() da coleção Client_processes**