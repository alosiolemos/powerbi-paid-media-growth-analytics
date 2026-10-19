// Depende de fxDadosNegocios e fxProximaPagina.
// Padrão didático de descobrir cursores e aplicar função, com chamadas repetidas.
let
    Cursores = List.Generate(
        () => "",
        each _ <> null,
        each fxProximaPagina(_)
    ),
    TabelaCursores = Table.FromList(Cursores, Splitter.SplitByNothing(), {"After"}),
    AplicarFuncao = Table.AddColumn(
        TabelaCursores, "Resposta", each fxDadosNegocios([After]), type record
    ),
    Resultados = List.Combine(
        List.Transform(AplicarFuncao[Resposta], each Record.Field(_, "results"))
    ),
    Tabela = Table.FromRecords(
        Resultados,
        {"id", "properties", "associations"},
        MissingField.UseNull
    )
in
    Tabela
