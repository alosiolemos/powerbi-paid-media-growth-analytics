// Adaptação didática de normalização textual; não é a consulta original.
(Valor as nullable text) as nullable text =>
let
    Limpo = if Valor = null then null else Text.Trim(Text.Clean(Valor)),
    Resultado = if Limpo = "" then null else Limpo
in
    Resultado
