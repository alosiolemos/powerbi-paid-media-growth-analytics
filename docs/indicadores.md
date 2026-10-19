# Indicadores e interpretação

[Código das 25 medidas selecionadas](../dax/medidas-selecionadas.dax).

Os exemplos são expressões unificadas do projeto, com apresentação organizada. As medidas por plataforma, colunas e relações das quais dependem não são distribuídas integralmente. Portanto, a seleção não é um conjunto executável independente.

| Medida | Regra observada |
| --- | --- |
| `uni_Impressões` | Soma impressões das três frentes de mídia. |
| `uni_Custo` | Soma custos de Meta, Google e LinkedIn. |
| `uni_Cliques` | Soma cliques definidos nas medidas das plataformas. |
| `uni_Leads` | Soma leads atribuídos nas medidas por plataforma. |
| `uni_MQL` | Soma MQL das três frentes. |
| `uni_SQL` | Soma SQL das três frentes. |
| `uni_Oportunidade` | Soma diagnósticos agendados nas três frentes. |
| `uni_Proposta` | Soma propostas das três frentes. |
| `uni_Fechados` | Soma contratos fechados das três frentes. |
| `uni_Fechados_R$` | Soma valores fechados das medidas por plataforma. |
| `uni_Campanhas_ICP%` | Leads classificados MID, EP ou LEP divididos pelos leads das três frentes. |
| `uni_Oportunidade%` | Oportunidades divididas por leads. |
| `uni_CPL` | Custo dividido por leads. |
| `uni_CAC` | Custo de mídia dividido por fechamentos. |
| `uni_TCV` | Soma o valor total do contrato usando relações de campanha por plataforma. |
| `uni_ROAS` | Valor fechado dividido pelo custo. |
| `uni_Perda` | Soma leads perdidos por vínculos de campanha das três plataformas. |
| `ROI` | Valor fechado menos custo, dividido pelo custo. |
| `uni_REC` | Soma reconversões atribuídas às três frentes. |
| `uni_Conversão_Negócios` | Fechamentos divididos por leads. |
| `uni_CTR` | Cliques divididos por impressões. |
| `uni_EMAIL_Corp_%` | Contatos classificados como corporativos pelas medidas de plataforma, divididos pelos leads. |
| `uni_EMAIL_Corp_QTD` | Soma as quantidades classificadas como e-mail corporativo. |
| `uni_CONVERT_CLIQUE_LEAD` | Leads divididos por cliques. |
| `uni_CPC` | Custo dividido por cliques. |

## A cadeia até o lead elegível

A medida-base QTD_LEAD faz contagem distinta do identificador do contato, exige uma classificação de validação igual a Não e levantada de mão igual a Sim, utilizando o relacionamento com a data de envio do formulário.

MQL e SQL são calculados a partir desse conjunto e de datas de qualificação preenchidas. Nos exemplos-base lidos, a referência temporal continua sendo a data de envio do formulário; não se deve afirmar que o total mensal representa necessariamente qualificações ocorridas naquele mês.

O significado completo da classificação de validação depende de uma regra histórica reservada.

## ICP

A expressão unificada define ICP como participação dos leads classificados MID, EP ou LEP. O significado e os limites de porte dependem da classificação construída no modelo. Não é uma probabilidade preditiva de compra.

Zero pode ser resultado da regra e do denominador; sem dados e filtros, não é possível distinguir ausência de registros de ausência de aderência apenas pelo cartão.

## CPL, CPC e CAC

CPL e CPC são razões entre custo e volume selecionado. O CAC publicado é custo de mídia dividido por fechamentos; não inclui automaticamente salários, ferramentas e todo o custo de aquisição da empresa.

Médias anuais devem ser construídas a partir de totais compatíveis, e não pela média simples das razões mensais.

## Fechamentos, MRR, TCV, ROAS e ROI

Na base lida, o valor de contratos assinados usa SUMX sobre IDs de negócio e MAX de um campo de MRR de assinatura. O TCV usa o valor total do contrato.

Isso é importante para interpretar as medidas nomeadas ROAS e ROI: se o valor fechado representar MRR, dividir esse valor pelo investimento não equivale automaticamente ao ROAS calculado sobre receita total realizada. A medida chamada ROI também não inclui todos os custos e não representa lucro contábil.

Esta edição publica os nomes e as fórmulas históricas com sua semântica, sem renomeá-las silenciosamente como métricas financeiras padronizadas.

## Conversões e atribuição

Somar medidas por plataforma pode contar uma entidade em mais de uma frente, dependendo das regras. Uma classificação de plataforma com prioridade não prova que todas as medidas aplicam exclusão mútua.

USERELATIONSHIP aparece em perdas e TCV para selecionar vínculos de campanha. As datas utilizadas e a relação contato–negócio precisam ser consideradas na comparação de denominadores.

## Reconversões e e-mail corporativo

Reconversão depende da classificação na tabela de origem recente. A distinção entre quantidade de contatos e quantidade de eventos precisa ser conferida nas medidas-base.

E-mail corporativo depende da classificação e das regras de domínios no modelo. Não equivale automaticamente a lead qualificado.

## Execução e limites

As expressões foram lidas e selecionadas nos arquivos. Nenhum valor foi recalculado no Power BI Desktop. As medidas excluídas desta seleção continuam no projeto privado; não foram apagadas do original.
