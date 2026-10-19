// Adaptação didática: datas ISO e datas textuais em pt-BR.
// Retornar null sinaliza falha; a consulta de aplicação deve registrar essa situação.
(Valor as any) as nullable date =>
    if Valor = null then null
    else if Value.Is(Valor, type date) then Valor
    else if Value.Is(Valor, type datetime) then Date.From(Valor)
    else if Value.Is(Valor, type datetimezone) then Date.From(Valor)
    else
        let
            Texto = Text.Trim(Text.From(Valor)),
            ISO = try Date.From(DateTimeZone.FromText(Texto)),
            Resultado =
                if Texto = "" then null
                else if not ISO[HasError] then ISO[Value]
                else try Date.FromText(Texto, [Culture = "pt-BR"]) otherwise null
        in
            Resultado
