// Demonstração autônoma com dados fictícios e sem rede.
let
    Fonte = #table(
        type table [OrigemBruta = nullable text, DataBruta = nullable text, ValorBruto = nullable text, CulturaValor = text],
        {
            {"  paid_search  ", "2024-03-15T10:00:00Z", "1250.50", "en-US"},
            {"  social  ", "15/03/2024", "1.250,50", "pt-BR"},
            {"  ", "data-invalida", "valor-invalido", "pt-BR"},
            {null, null, null, "pt-BR"}
        }
    ),
    LimparTexto = (v as nullable text) as nullable text =>
        let t = if v = null then null else Text.Trim(Text.Clean(v))
        in if t = "" then null else t,
    ConverterData = (v as nullable text) as nullable date =>
        if v = null then null
        else
            let
                ISO = try Date.From(DateTimeZone.FromText(v))
            in
                if not ISO[HasError] then ISO[Value]
                else try Date.FromText(v, [Culture = "pt-BR"]) otherwise null,
    TextoTratado = Table.AddColumn(
        Fonte, "OrigemTratada", each LimparTexto([OrigemBruta]), type nullable text
    ),
    DataTratada = Table.AddColumn(
        TextoTratado, "DataTratada", each ConverterData([DataBruta]), type nullable date
    ),
    ValorTratado = Table.AddColumn(
        DataTratada, "ValorTratado",
        each if [ValorBruto] = null then null
            else try Number.FromText([ValorBruto], [CulturaValor]) otherwise null,
        type nullable number
    ),
    Validacao = Table.AddColumn(
        ValorTratado, "RevisarConversao",
        each ([DataBruta] <> null and [DataTratada] = null)
            or ([ValorBruto] <> null and [ValorTratado] = null),
        type logical
    )
in
    Validacao
