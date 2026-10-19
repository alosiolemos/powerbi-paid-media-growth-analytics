# Colunas calculadas: recuperação de IDs e jornada comercial

## Por que isso importa

As imagens e definições do modelo mostram colunas DAX que transformam dados por linha. Elas criam as chaves e classificações usadas depois pelos relacionamentos e medidas. São uma parte relevante do trabalho de preparação, não apenas cálculos finais dos gráficos.

[Código dos seis exemplos adaptados](../dax/colunas-demonstrativas.dax).

## O que foi encontrado e como foi representado

| Regra no projeto | Exemplo público |
| --- | --- |
| ID Facebook Campanha_V2 | Duas correspondências sintéticas em URL inicial ou WhatsApp |
| ID Facebook Ad_V2 | Duas correspondências sintéticas de anúncio na URL inicial |
| IDs de campanha Google V2 | Duas correspondências sintéticas de campanha |
| Plataforma | Prioridade Google → Meta → LinkedIn |
| Lev.Mão: enviou formulário durante a visita? | Datas, origens elegíveis, exceção de campanha e caminho WhatsApp |
| Data de assinatura | Cruzamento contato–negócio com filtro temporal e pipeline de exemplo |

Também existem regras para grupos, palavras-chave e criativos LinkedIn/Google. A lista integral de IDs e exceções permanece reservada. Os exemplos não são extrações literais completas.

## 1. Reconstrução dos IDs

O padrão usa SWITCH(TRUE()) e CONTAINSSTRING. A URL pode conter evidências de campanha mesmo quando outra propriedade do CRM não foi preenchida de forma útil.

A primeira condição verdadeira determina o resultado. No exemplo de campanha Meta, a busca também considera a página WhatsApp; no exemplo de anúncio, considera apenas a URL inicial, refletindo a distinção observada.

COALESCE foi acrescentado nos exemplos para tratar URL em branco como texto vazio. Os marcadores camp_meta_a, camp_meta_b e similares são fictícios e distintos.

Busca por substring pode produzir colisões. O exemplo não substitui validação de parâmetros nem um cadastro de correspondências mantido e testado.

## 2. Classificação da plataforma

A ordem é parte da regra. Se um contato tiver mais de uma chave preenchida, a expressão escolhe a primeira. Isso é prioridade de classificação, não prova de exclusividade da origem nem modelo de atribuição multitoque.

IDLinkedIn é uma entrada do esquema didático; sua reconstrução não faz parte dos seis exemplos.

## 3. Levantada de mão

A regra combina:

1. Comparação entre datas de conversão, origem e formulário.
2. Origem elegível para manifestação de interesse.
3. Exceções reconhecidas em campanhas.
4. Presença de URL WhatsApp quando a URL inicial está vazia.

O exemplo preserva o sentido das comparações históricas, mas acrescenta verificação de datas em branco, simplifica as exceções e usa nomes genéricos. Essa verificação pode alterar o comportamento frente a valores ausentes; não foi apresentada como transcrição idêntica.

As exceções por IDs de pessoas foram omitidas. Manifestação de interesse é uma classificação operacional; não comprova assinatura nem valida, sozinha, a atribuição da campanha.

## 4. Cruzamento até a assinatura

O exemplo usa o contato atual para filtrar negócios associados e seleciona a maior data de assinatura entre os negócios elegíveis.

A elegibilidade considera pipeline e criação do negócio posterior ou igual à data do formulário. Selecionar MAX significa escolher a última data dentro desse recorte, não necessariamente a primeira assinatura.

A ordem DATE foi adaptada para ano, mês e dia. O original contém uma construção de data que requer revisão; não foi alterado.

## Esquema exigido pelos exemplos

| Tabela | Colunas de entrada |
| --- | --- |
| Contatos | ID, URLInicial, URLWhatsApp, IDLinkedIn, DataConversaoURL, DataOrigem, DataFormulario, Origem |
| Negocios | ContatoID, Pipeline, DataCriacao, DataAssinatura |

As datas precisam estar tipadas; os IDs devem usar representações compatíveis. Não são fornecidos dados reais nem o modelo dessas tabelas.

## Como ler ou experimentar

O arquivo contém expressões separadas, não um script para execução em lote. Em uma cópia didática com o esquema acima, crie as colunas na ordem apresentada. Use URLs fictícias como https://example.com/?utm_campaign=camp_meta_a e confira a chave recuperada.

A assinatura requer linhas de negócios associadas ao contato. Os exemplos foram revisados textualmente, sem execução no Power BI Desktop.
