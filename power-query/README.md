# Exemplos Power Query / linguagem M

Os arquivos .pq contêm texto M para leitura ou cópia no Editor Avançado do Power Query. Não são importadores automáticos do PBIP.

| Arquivo | Papel | Natureza |
| --- | --- | --- |
| [fxNormalizarTexto.pq](fxNormalizarTexto.pq) | Limpar espaços e caracteres de controle | Adaptação didática |
| [fxConverterData.pq](fxConverterData.pq) | Interpretar datas ISO ou pt-BR | Adaptação didática |
| [fxLerUTM.pq](fxLerUTM.pq) | Ler parâmetros de uma URL | Exemplo complementar, distinto da recuperação histórica por padrões |
| [demo-tratamento.pq](demo-tratamento.pq) | Tipar dados e sinalizar falhas com linhas fictícias | Demonstração sem rede |
| [fxDadosNegocios.pq](fxDadosNegocios.pq) | Consultar uma página de negócios | Adaptação do padrão de integração |
| [fxProximaPagina.pq](fxProximaPagina.pq) | Obter a continuação | Adaptação do padrão de integração |
| [Negocios.pq](Negocios.pq) | Gerar cursores e aplicar a função | Adaptação do padrão de integração |

## Experimente sem credenciais

1. No Power BI Desktop, abra Transformar dados.
2. Crie uma Consulta Nula e abra o Editor Avançado.
3. Cole somente demo-tratamento.pq.
4. Confira a tabela resultante.

O resultado esperado tem quatro linhas. As duas primeiras têm data de 15/03/2024 e valor numérico 1250,50. A terceira é sinalizada para revisão por data/valor inválidos. A quarta conserva valores ausentes sem marcá-los como falha de conversão.

Esse resultado é esperado pela leitura do código; não foi confirmado por execução no Power BI Desktop.

## Funções separadas

Para experimentar uma função isolada, crie uma consulta com o nome do arquivo sem extensão. Por exemplo, fxNormalizarTexto pode ser chamada com um texto fictício.

A função UTM pressupõe uma URL absoluta e chaves de parâmetro em minúsculas. Não resolve todos os casos de URL malformada, parâmetros repetidos, nomes de campanha divergentes ou atribuição comercial.

## Exemplos com conexão

As funções de HubSpot exigem credencial, acesso autorizado e validação da API no ambiente. Não há token neste pacote. O exemplo consulta dados mas não executa automaticamente nenhuma requisição ao ser apenas lido no GitHub.

O padrão separa descoberta de cursor e obtenção de dados e pode repetir chamadas. Não inclui controle de taxa, repetição de falhas ou persistência incremental. A expansão completa de propriedades e associações foi reservada.

Nenhum exemplo foi executado contra as fontes reais nesta preparação.
