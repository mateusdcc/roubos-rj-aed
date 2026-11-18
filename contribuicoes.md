# Declaração de Contribuições Individuais — Marco 3 (Entrega Final)
**Projeto:** Roubos no Rio de Janeiro: uma mudança igual para todos?  
**Disciplina:** Análise Exploratória de Dados e Visualização (2026.2) — FGV EMAp  
**Docente:** Prof. João Rulff  
**Integrantes (Marco 3):** Pedro Braga e Felipe  
*(Com registro das contribuições técnicas de Mateus Cavalcanti nos Marcos 1 e 2)*  

---

## 1. Contextualização da Equipe e Histórico do Projeto

O projeto foi iniciado e desenvolvido em regime colaborativo por **Mateus Cavalcanti, Pedro Braga e Felipe** durante os Marcos 1 e 2 do semestre letivo. Nesse período inicial, foram definidas conjuntamente as hipóteses orientadoras, o recorte do painel balanceado de 82 municípios e as primeiras versões das séries temporais.

No início das atividades do Marco 3 (Entrega Final), Mateus Cavalcanti desligou-se do grupo e da disciplina. A equipe mantém registrado de forma transparente o devido crédito pelas contribuições técnicas realizadas por Mateus nos marcos anteriores, notadamente:
- Configuração inicial do ambiente reprodutível baseado em Nix (`flake.nix` e `flake.lock`);
- Implementação inicial da governança de integridade de dados por verificação de hash SHA-256 (`data/fontes.json`);
- Hospedagem do repositório original do projeto no GitHub (`mateusdcc/roubos-rj-aed`).

A condução, reformulação metodológica, aprofundamento analítico, implementação dos testes estatísticos e elaboração de todos os relatórios e apresentações da entrega final (Marco 3) foram integralmente assumidos e executados pela dupla **Pedro Braga e Felipe**, conforme a divisão de responsabilidades a seguir.

---

## 2. Matriz de Responsabilidades (Marco 3)

| Etapa / Dimensão do Projeto | Pedro Braga | Felipe |
|---|:---:|:---:|
| **Concepção e Hipóteses** | Formulação de H1 e H3 | Formulação de H2 e refinamento teórico |
| **Pipeline e Engenharia de Dados** | Normalização diária e script de dados | Atualização do Nix com SciPy e conferência SHA-256 |
| **Modelagem e Estatística** | Métricas de dispersão (P90-P10, CV, Gini e Top 8) | Teste de Friedman em blocos, Kendall $W$, grupos e agregação |
| **Análise Temporal Suavizada** | Médias e variações por triênios (2014–16 vs. 2022–24) | Análise do repique veicular de 2024 na Capital |
| **Visualizações Estáticas (Matplotlib/Seaborn)** | Gráficos 01, 03, 04 (painel triplo com CV), 08 e 10 (Mapa) | Gráficos 02, 06, 07 (percentual 0–100%) e 09 (Regional ISP) |
| **Visualização Cartográfica e Interativa** | Mapa coroplético municipal em Matplotlib (`10_mapa_municipal.png`) | Gráfico regional em Plotly e exportação HTML |
| **Redação do Notebook e Relatório** | Seções 1, 2, 4, 6, 8 e 9 | Seções 3, 5, 7, 10, 11 e 12 |
| **Apresentação Oral e Slides** | Slides HTML/PDF e roteiro de fala sincronizado (10 min) | Revisão dos slides, guia de Q&A com as 6 perguntas da banca |

---

## 3. Detalhamento das Contribuições no Marco 3

### Pedro Braga
- **Análise de Dispersão e Desigualdade Relativa:** Cálculo e interpretação analítica das métricas de dispersão intermunicipal (Pergunta 4), incorporando o Coeficiente de Variação (CV) estadual e metropolitano, o Índice de Gini e a concentração nos 8 maiores municípios, demonstrando a dualidade entre o recuo absoluto (P90–P10) e a ampliação da desigualdade relativa.
- **Análise Cartográfica Municipal por Triênios:** Desenvolvimento do mapa coroplético do Estado do Rio de Janeiro (`10_mapa_municipal.png`) utilizando a malha GeoJSON oficial e `PatchCollection` do Matplotlib, mapeando as variações municipais suavizadas por triênios e contextualizando contrastes espaciais.
- **Análise Temporal Suavizada por Triênios:** Condução da comparação entre o triênio inicial (2014–2016) e o final (2022–2024), comprovando que a elevação pontual da Capital em roubo de veículos decorreu exclusivamente do repique de 2024 (+37,1%), enquanto no triênio houve recuo de 22,1%.
- **Material de Apresentação e Roteiro Oral:** Desenvolvimento dos slides interativos em HTML (`apresentacao_marco3.html`), compilação da apresentação em PDF (`apresentacao_marco3.pdf`) e redação detalhada do roteiro minuto a minuto da apresentação de 10 minutos (`roteiro_apresentacao_marco3.md`).

### Felipe
- **Auditoria de Qualidade e Governança:** Condução da auditoria dos dados mensais que identificou os registros zerados em dez municípios fluminenses (2014 a 2017), justificando o painel balanceado de 82 municípios e atualizando `data/fontes.json` com os hashes SHA-256 da base e da malha GeoJSON.
- **Ambiente de Reprodutibilidade:** Atualização da configuração do Nix (`flake.nix`), incluindo a biblioteca `scipy` para suportar testes estatísticos não paramétricos, garantindo reprodutibilidade estrita.
- **Sazonalidade Avançada (Friedman, Kendall $W$ e Falácia Ecológica):** Implementação do teste não paramétrico de Friedman em blocos pareados por grupos regionais (Capital/Baixada/Niterói vs. Interior), cálculo do coeficiente de concordância $W$ de Kendall e teste sobre contagens brutas estaduais agregadas, provando a ausência de sazonalidade em roubos de rua na metrópole.
- **Decomposição Estrutural dos Roubos de Rua:** Reformulação da Figura 07 (`07_decomposicao_rua.png`) com painel direito em composição percentual (0–100%), sem truncamento de eixos, e articulação teórica das hipóteses de valor/liquidez do aparelho e aprimoramento da tipificação policial.
- **Análise de Sensibilidade e Q&A da Banca:** Execução do teste de sensibilidade comparando 82 vs. 92 municípios (2018–2024) e elaboração das respostas técnicas para as 6 questões prováveis da banca examinadora.

---

## 4. Declaração de Integridade

Os integrantes declaram que o código, análises, figuras e interpretações textuais apresentados no Marco 3 foram elaborados para fins estritamente acadêmicos na disciplina de AEDV da FGV EMAp, com base exclusiva em registros públicos oficiais do Instituto de Segurança Pública do Estado do Rio de Janeiro (ISP-RJ).
