# Declaração de Contribuições Individuais — Marco 3 (Entrega Final)
**Projeto:** Roubos no Rio de Janeiro: uma mudança igual para todos?  
**Disciplina:** Análise Exploratória de Dados e Visualização (2026.2) — FGV EMAp  
**Docente:** Prof. João Rulff  
**Integrantes:** Pedro Braga e Felipe  

---

## 1. Visão Geral da Colaboração

O projeto foi desenvolvido em regime de colaboração contínua pela dupla de integrantes ao longo do semestre letivo (Marcos 1, 2 e 3). As decisões analíticas e metodológicas fundamentais — formulação das hipóteses de pesquisa, identificação dos registros zerados na auditoria de dados, definição do painel balanceado de 82 municípios e seleção dos testes estatísticos — foram amplamente debatidas e consensuadas por Pedro Braga e Felipe.

A divisão de responsabilidades técnicas e analíticas foi estruturada de forma equilibrada entre os dois integrantes, conforme a matriz e o detalhamento a seguir.

---

## 2. Matriz de Responsabilidades por Integrante

| Etapa / Dimensão do Projeto | Pedro Braga | Felipe |
|---|:---:|:---:|
| **Concepção e Hipóteses** | Formulação de H1 e H3 | Formulação de H2 e refinamento teórico |
| **Pipeline e Engenharia de Dados** | Processamento de taxas, datas e hash SHA-256 | Ambiente Nix e auditoria dos registros iniciais |
| **Modelagem e Estatística** | Normalização diária, P90-P10 e Coeficiente de Variação | Teste de Friedman em blocos e análise de sensibilidade |
| **Visualizações Estáticas (Matplotlib/Seaborn)** | Gráficos 01, 03, 04 e 08 | Gráficos 02, 05, 06 e 07 |
| **Visualização Interativa** | Layout, estilos e revisão de interface | Gráfico regional em Plotly e exportação HTML |
| **Redação do Notebook e Relatório** | Seções 1, 2, 4, 6 e 9 | Seções 3, 5, 7, 8 e 10 |
| **Apresentação Oral e Slides** | Slides HTML/PDF e roteiro de fala (10 min) | Guia de perguntas e respostas e revisão dos slides |

---

## 3. Detalhamento das Contribuições Individuais

### Pedro Braga
- **Análise de Dispersão e Desigualdade Relativa:** Cálculo e interpretação das métricas de dispersão intermunicipal (Pergunta 4), incluindo o intervalo interdecil (P90-P10) e a incorporação do Coeficiente de Variação (CV), documentando o aumento da desigualdade relativa entre os municípios fluminenses.
- **Análise Espacial e Casos Extremos:** Processamento das variações municipais (Pergunta 3) e elaboração do gráfico de barras divergentes (`03_mudancas_municipais.png`), analisando o comportamento atípico de Belford Roxo e o contraste com os demais municípios metropolitanos.
- **Normalização Temporal, Séries Médias e Heatmap:** Implementação da normalização diária das taxas mensais, processamento das trajetórias estaduais agregadas (`01_trajetorias.png`) e codificação do mapa de calor de sazonalidade (`08_sazonalidade_heatmap.png`), ajustando a visualização dos eixos para evitar sobreposições.
- **Auditoria Criptográfica de Dados:** Implementação da rotina de conferência de integridade dos dados brutos com verificação de hashes SHA-256 documentados em `data/fontes.json`.
- **Material de Apresentação e Roteiro:** Desenvolvimento dos slides interativos em HTML (`apresentacao_marco3.html`), compilação do arquivo PDF (`apresentacao_marco3.pdf`) e redação detalhada do roteiro minuto a minuto da apresentação oral (`roteiro_apresentacao_marco3.md`).

### Felipe
- **Auditoria de Qualidade e Recorte Territorial:** Condução da auditoria inicial dos dados mensais que identificou os 40 meses consecutivos de registros zerados em dez municípios fluminenses (2014 a abril de 2017), justificando a definição do painel balanceado de 82 municípios.
- **Ambiente de Reprodutibilidade:** Configuração do ambiente Nix (`flake.nix` e `flake.lock`), garantindo versões fixadas do Python, Jupyter e bibliotecas científicas (incluindo `scipy`).
- **Trajetórias Regionais e Visualização Interativa:** Processamento das taxas das quatro macrorregiões (`02_regioes.png`) e implementação do gráfico interativo em Plotly (`figuras/regioes_interativo.html`), permitindo inspeção detalhada de cada ponto da série histórica.
- **Decomposição dos Roubos de Rua:** Coleta e processamento das contagens brutas de ocorrências para a Pergunta 5, gerando o gráfico de decomposição empilhada (`07_decomposicao_rua.png`) entre transeunte, coletivo e celular.
- **Validação Estatística de Sazonalidade:** Formulação e implementação do teste não-paramétrico de Friedman em blocos pareados (`scipy.stats.friedmanchisquare`) para avaliar a sazonalidade (Pergunta 6), com e sem o ano atípico de 2020.
- **Análise de Sensibilidade e Literatura:** Execução do teste de sensibilidade comparando os 82 municípios com os 92 municípios no período 2018–2024, além do levantamento das notas metodológicas do ISP-RJ e referências criminológicas.

---

## 4. Declaração de Integridade

Os integrantes declaram que o código, análises, figuras e textos apresentados na entrega final foram elaborados pela dupla no âmbito da disciplina de AEDV, com base exclusiva em dados públicos oficiais do Instituto de Segurança Pública do Estado do Rio de Janeiro (ISP-RJ).
