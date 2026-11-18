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
| **Modelagem e Estatística** | Métricas de dispersão (P90-P10 e CV) | Teste de Friedman em blocos e sensibilidade 82 vs. 92 |
| **Visualizações Estáticas (Matplotlib/Seaborn)** | Gráficos 01, 03, 04 e 08 | Gráficos 02, 05, 06, 07 e 09 |
| **Visualização Interativa** | Interface e revisão de layout | Gráfico regional em Plotly e exportação HTML |
| **Redação do Notebook e Relatório** | Seções 1, 2, 4, 6 e 9 | Seções 3, 5, 7, 8, 10 e 11 |
| **Apresentação Oral e Slides** | Slides HTML/PDF e roteiro de fala (10 min) | Revisão dos slides e guia de perguntas e respostas |

---

## 3. Detalhamento das Contribuições no Marco 3

### Pedro Braga
- **Análise de Dispersão Absoluta e Relativa:** Cálculo e interpretação analítica das métricas de dispersão intermunicipal (Pergunta 4), incorporando o Coeficiente de Variação (CV) para demonstrar que a queda da dispersão absoluta (P90–P10) conviveu com o aumento da desigualdade relativa entre os municípios.
- **Análise Espacial e Casos Extremos:** Processamento das variações absolutas municipais (Pergunta 3) e codificação do gráfico de barras divergentes (`03_mudancas_municipais.png`), analisando o comportamento atípico de Belford Roxo e o contraste com quedas acentuadas em Nilópolis e São Gonçalo.
- **Normalização Temporal e Heatmap:** Implementação da rotina de normalização diária das taxas mensais e elaboração do mapa de calor de sazonalidade (`08_sazonalidade_heatmap.png`), ajustando a formatação dos eixos para eliminar sobreposições de texto.
- **Material de Apresentação e Roteiro Oral:** Desenvolvimento dos slides interativos em HTML (`apresentacao_marco3.html`), compilação da apresentação em PDF (`apresentacao_marco3.pdf`) e redação detalhada do roteiro minuto a minuto da apresentação de 10 minutos (`roteiro_apresentacao_marco3.md`).

### Felipe
- **Auditoria de Qualidade e Recorte Territorial:** Condução da auditoria dos dados mensais que identificou os 40 meses consecutivos de registros zerados em dez municípios fluminenses (2014 a abril de 2017), justificando a definição do painel balanceado de 82 municípios.
- **Ambiente de Reprodutibilidade:** Atualização da configuração do Nix (`flake.nix`), incluindo a biblioteca `scipy` para suportar testes estatísticos não paramétricos, garantindo reprodutibilidade estrita no Linux e macOS.
- **Sazonalidade e Teste de Friedman:** Formulação teórica e implementação do teste não paramétrico de Friedman em blocos pareados (`scipy.stats.friedmanchisquare`) para a Pergunta 6, avaliado tanto no período completo de 11 anos quanto sem o ano atípico de 2020. Elaboração da desagregação regional comparando Metropolitana vs. Interior (`09_sazonalidade_regional.png`).
- **Decomposição dos Roubos de Rua:** Coleta e processamento das contagens brutas de ocorrências para a Pergunta 5, gerando o gráfico de decomposição empilhada (`07_decomposicao_rua.png`) entre transeunte, coletivo e celular, com legendas ajustadas fora da área útil dos eixos.
- **Análise de Sensibilidade e Literatura:** Execução do teste de sensibilidade comparando os 82 municípios com os 92 municípios no intervalo 2018–2024, além da articulação teórica dos achados de celular com a teoria das atividades rotineiras de Cohen e Felson (1979).

---

## 4. Declaração de Integridade

Os integrantes declaram que o código, análises, figuras e interpretações textuais apresentados no Marco 3 foram elaborados para fins estritamente acadêmicos na disciplina de AEDV da FGV EMAp, com base exclusiva em registros públicos oficiais do Instituto de Segurança Pública do Estado do Rio de Janeiro (ISP-RJ).
