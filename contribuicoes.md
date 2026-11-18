# Declaração de Contribuições Individuais — Marco 3 (Entrega Final)
**Projeto:** Roubos no Rio de Janeiro: uma mudança igual para todos?  
**Disciplina:** Análise Exploratória de Dados e Visualização (2026.2) — FGV EMAp  
**Docente:** Prof. João Rulff  
**Integrantes:** Mateus Cavalcanti, Pedro Braga e Felipe  

---

## 1. Visão Geral da Colaboração

O projeto foi desenvolvido de forma colaborativa pelos três integrantes ao longo do semestre letivo (Marcos 1, 2 e 3). As decisões analíticas fundamentais — definição das hipóteses de pesquisa, identificação dos registros zerados na auditoria inicial, adoção do painel balanceado de 82 municípios e escolha dos testes estatísticos — foram discutidas e acordadas conjuntamente pela equipe.

A distribuição de tarefas técnicas e analíticas foi organizada conforme a matriz e o detalhamento a seguir.

---

## 2. Matriz de Responsabilidades por Integrante

| Etapa / Dimensão do Projeto | Mateus Cavalcanti | Pedro Braga | Felipe |
|---|:---:|:---:|:---:|
| **Concepção e Hipóteses** | Formulação de H1 e H2 | Formulação de H3 | Refinamento teórico e perguntas |
| **Pipeline e Engenharia de Dados** | Ambiente Nix e hash SHA-256 | Processamento de taxas e datas | Auditoria inicial de consistência |
| **Modelagem e Estatística** | Agregações temporais e regionais | Normalização diária, P90-P10 e CV | Teste de Friedman e sensibilidade |
| **Visualizações Estáticas (Matplotlib/Seaborn)** | Gráficos 01 e 02 | Gráficos 03, 04 e 08 | Gráficos 05, 06 e 07 |
| **Visualização Interativa** | Gráfico regional em Plotly | Revisão visual e layout | Exportação HTML |
| **Redação do Notebook e Relatório** | Seções 1, 2 e 3 | Seções 4, 6 e 9 | Seções 5, 7, 8 e 10 |
| **Apresentação Oral e Slides** | Revisão dos slides | Estrutura dos slides e roteiro | Guia de perguntas e respostas |

---

## 3. Detalhamento das Contribuições Individuais

### Pedro Braga
- **Análise de Dispersão e Variação:** Cálculo e interpretação das métricas de dispersão intermunicipal (Pergunta 4), incluindo tanto o intervalo interdecil (P90-P10) quanto o Coeficiente de Variação (CV), documentando o aumento da desigualdade relativa entre municípios.
- **Análise Espacial e Casos Extremos:** Processamento das variações municipais (Pergunta 3) e elaboração do gráfico de barras divergentes (`03_mudancas_municipais.png`), analisando o comportamento atípico de Belford Roxo.
- **Normalização Temporal e Heatmap:** Implementação da normalização diária das taxas mensais e codificação do mapa de calor de sazonalidade (`08_sazonalidade_heatmap.png`), ajustando a visualização dos rótulos anuais.
- **Material de Apresentação:** Desenvolvimento dos slides em HTML (`apresentacao_marco3.html`), geração do PDF correspondente (`apresentacao_marco3.pdf`) e redação do roteiro detalhado de fala de 10 minutos (`roteiro_apresentacao_marco3.md`).

### Mateus Cavalcanti
- **Ambiente e Reprodutibilidade:** Configuração do ambiente Nix (`flake.nix` e `flake.lock`), garantindo versões fixadas do Python, Jupyter e pacotes científicos para diferentes sistemas operacionais.
- **Auditoria Criptográfica:** Implementação da verificação automática de integridade dos arquivos de dados brutos por hash SHA-256 a partir de `data/fontes.json`.
- **Trajetórias Temporais e Regionais:** Processamento das taxas médias municipais (Pergunta 1) e das séries regionais (Pergunta 2), gerando os gráficos `01_trajetorias.png` e `02_regioes.png`.
- **Visualização Interativa:** Criação da versão interativa das séries regionais em Plotly (`figuras/regioes_interativo.html`), permitindo inspeção de valores pontuais por ano e região.

### Felipe
- **Auditoria de Dados e Recorte Territorial:** Condução da auditoria que identificou 40 meses consecutivos de registros zerados em dez municípios fluminenses (2014 a abril de 2017), justificando a definição do painel balanceado de 82 municípios.
- **Decomposição dos Roubos de Rua:** Coleta e processamento das contagens absolutas de ocorrências do ISP-RJ para a Pergunta 5, gerando o gráfico de decomposição empilhada (`07_decomposicao_rua.png`) entre transeunte, coletivo e celular.
- **Validação Estatística de Sazonalidade:** Implementação do teste de Friedman em blocos (`scipy.stats.friedmanchisquare`) para avaliar a sazonalidade mensal (Pergunta 6), com e sem o ano atípico de 2020.
- **Análise de Sensibilidade e Referências:** Execução do teste de sensibilidade comparando os 82 municípios do painel com os 92 municípios do estado no período de 2018 a 2024, além do levantamento das referências metodológicas do ISP-RJ e da literatura criminológica.

---

## 4. Declaração de Integridade

Os integrantes declaram que o código, análises, figuras e textos apresentados na entrega final foram elaborados pela equipe no âmbito da disciplina de AEDV, com base exclusiva em dados públicos oficiais do Instituto de Segurança Pública do Estado do Rio de Janeiro (ISP-RJ).
