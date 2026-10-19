// Exemplo adaptado de requisição ao CRM, sem parâmetros reais.
// pTokenHubSpot deve ser configurado apenas em ambiente privado autorizado.
(After as nullable text) as record =>
let
    Base = [limit = "100", archived = "false", associations = "contacts"],
    Parametros = if After = null or After = "" then Base
        else Record.AddField(Base, "after", After),
    Resposta = Json.Document(
        Web.Contents(
            "https://api.hubapi.com",
            [
                RelativePath = "crm/v3/objects/deals",
                Query = Parametros,
                Headers = [Authorization = "Bearer " & pTokenHubSpot]
            ]
        )
    )
in
    Resposta
