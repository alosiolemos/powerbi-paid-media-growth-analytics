# Inventário de vínculos do modelo

Foram lidas 64 relações no arquivo de definição. A tabela lista os **43 vínculos sem calendários locais automáticos**; os outros 21 foram agrupados para evitar poluição visual. Identificadores de linhagem foram omitidos.

Origem e destino são os lados registrados no arquivo; não representam necessariamente uma direção de propagação de filtros.

| Origem | Destino | Estado | Filtro explicitamente bidirecional |
| --- | --- | --- | --- |
| `'Linkedin_Grupos de Campanhas'.id` | `Linkedin_Campanhas.campaignGroup` | Ativo | Sim |
| `Google_Ads_Campaing.Id_Camp` | `Google_Ads_Groups.campaign_id` | Ativo | Sim |
| `Google_Ads_Keyword.ad_group_id` | `Google_Ads_Groups.ad_group_id` | Ativo | Sim |
| `hs_Contados_First.'Data de Envio de Formulário'` | `dCalendario.Date` | Ativo | Não |
| `hs_Negócios_Contatos.createdate` | `dCalendario.Date` | Ativo | Não |
| `dCalendario.Ano&Mês_Abreviado` | `'Linkedin_Grupos de Campanhas'.Ano&Mês` | Inativo | Sim |
| `dCalendario.Ano&Mês_Abreviado` | `Linkedin_Campanhas.Ano&Mês` | Inativo | Sim |
| `Google_Ads_Campaing.Data_` | `dCalendario.Date` | Inativo | Não |
| `Google_Ads_Groups._DATA_DATE` | `dCalendario.Date` | Inativo | Não |
| `Google_Ads_Keyword._DATA_DATE` | `dCalendario.Date` | Inativo | Não |
| `dCalendario.Ano&Mês_Extenso` | `Meta_Campanha_Dados.Ano&Mês` | Inativo | Sim |
| `dCalendario.Ano&Mês_Extenso` | `Meta_Anuncios_Dados.Ano&Mês` | Inativo | Sim |
| `Meta_Conjunto_Anuncios.campaign_id` | `Meta_Campanha_Dados.campaign_id` | Ativo | Sim |
| `Meta_Anuncios_Dados.adset_id` | `Meta_Conjunto_Anuncios.adset_id` | Ativo | Sim |
| `Google_Ads_Creativos.AD_GROUP` | `Google_Ads_Keyword.ad_group_id` | Ativo | Sim |
| `Google_Ads_Creativos._DATA_DATE` | `dCalendario.Date` | Inativo | Não |
| `hs_Negócios_Contatos.'contact.id'` | `hs_Contados_First.vid` | Inativo | Sim |
| `hs_Contatos_Last.'Data da Origem'` | `dCalendario.Date` | Ativo | Não |
| `Google_Ads_Groups.ad_group_id` | `'tab.Grupos de Campanhas'.id` | Inativo | Não |
| `Linkedin_Campanhas.id` | `'tab.Grupos de Campanhas'.id` | Inativo | Não |
| `hs_Contados_First.'ID Linkedin Campanhas_V2'` | `'tab.Grupos de Campanhas'.id` | Inativo | Não |
| `hs_Contados_First.'ID Google Grupo de Campanha_V2'` | `'tab.Grupos de Campanhas'.id` | Inativo | Não |
| `Meta_Anuncios_Dados.adset_id` | `'tab.Grupos de Campanhas'.id` | Inativo | Não |
| `'tab.Keyword'.id_keyword` | `Google_Ads_Keyword.ad_group_criterion_criterion_id` | Inativo | Sim |
| `'tab.Keyword'.id_keyword` | `hs_Contados_First.'ID Google Keyword_V2'` | Inativo | Sim |
| `Google_Ads_Creativos.AD_ID` | `Google_Ads_Creativos_Descrição.ID_AD` | Ativo | Não |
| `Meta_Campanha_Dados.campaign_id` | `'tab.Campanhas'.id` | Inativo | Não |
| `Google_Ads_Campaing.Id_Camp` | `'tab.Campanhas'.id` | Inativo | Não |
| `hs_Contados_First.'ID Linkedin Grupos de Campanha_V2'` | `'tab.Campanhas'.id` | Inativo | Não |
| `'Linkedin_Grupos de Campanhas'.id` | `'tab.Campanhas'.id` | Inativo | Não |
| `hs_Contados_First.'ID Google Campanha_V2'` | `'tab.Campanhas'.id` | Inativo | Não |
| `hs_Contados_First.'ID Facebook Campanha_V2'` | `'tab.Campanhas'.id` | Inativo | Não |
| `hs_Contatos_Last.'ID Google Campanha_V2'` | `'tab.Campanhas'.id` | Inativo | Não |
| `hs_Contatos_Last.'ID Linkedin Grupos de Campanha_V2'` | `'tab.Campanhas'.id` | Inativo | Não |
| `hs_Contatos_Last.'ID Facebook Campanha_V2'` | `'tab.Campanhas'.id` | Inativo | Não |
| `'tab.Grupos de Campanhas'.id_camp` | `'tab.Campanhas'.id` | Ativo | Sim |
| `'tab.Keyword'.id_camp` | `'tab.Campanhas'.id` | Ativo | Sim |
| `Meta_Anuncios_Dados.ad_id` | `'tab.Criativos'.id` | Inativo | Não |
| `hs_Contados_First.'ID Facebook Ad_V2'` | `'tab.Criativos'.id` | Inativo | Não |
| `hs_Contados_First.'ID Linkedin Creatives'` | `'tab.Criativos'.id` | Inativo | Não |
| `Google_Ads_Creativos.AD_ID` | `'tab.Criativos'.id` | Inativo | Não |
| `hs_Contados_First.'ID Google Criativos_V2'` | `'tab.Criativos'.id` | Inativo | Não |
| `'tab.Criativos'.id_camp` | `'tab.Campanhas'.id` | Ativo | Sim |

A ausência de declaração bidirecional não informa, por si só, toda a interação do modelo. O inventário não valida unicidade, integridade referencial, ausência de colisões de IDs ou acurácia dos cruzamentos.

Consulte [a interpretação da modelagem](modelo-relacionamentos.md).
