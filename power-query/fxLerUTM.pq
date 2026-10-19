// Exemplo complementar: leitura estruturada de UTMs.
// Não reproduz as correspondências fixas de IDs do projeto histórico.
(URL as nullable text) as record =>
let
    Partes = if URL = null then null else try Uri.Parts(URL) otherwise null,
    Parametros = if Partes = null then [] else Record.FieldOrDefault(Partes, "Query", []),
    Saida = [
        utm_source = Record.FieldOrDefault(Parametros, "utm_source", null),
        utm_medium = Record.FieldOrDefault(Parametros, "utm_medium", null),
        utm_campaign = Record.FieldOrDefault(Parametros, "utm_campaign", null)
    ]
in
    Saida
