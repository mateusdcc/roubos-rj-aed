# Declaração de Contribuições Individuais — Marco 3 (Entrega Final)
**Projeto:** Roubos no Rio de Janeiro: uma mudança igual para todos?  
**Disciplina:** Análise Exploratória de Dados e Visualização (2026.2) — FGV EMAp  
**Docente:** Prof. João Rulff  
**Autores (Marco 3):** Pedro Tolentino Pires Braga e Felipe  
*(Com registro circunstanciado das contribuições técnicas de Mateus Cavalcanti nos Marcos 1 e 2)*  

---

## 1. Contextualização da Equipe e Histórico do Projeto

Iniciamos e desenvolvemos o projeto em regime de colaboração com **Mateus Cavalcanti** durante os Marcos 1 e 2 do semestre letivo. Naquela etapa inicial conjunta, delineamos as primeiras ideias sobre as perguntas de pesquisa, o recorte técnico do painel balanceado de 82 municípios fluminenses e as versões preliminares das séries temporais.

No início do desenvolvimento do Marco 3 (Entrega Final), Mateus Cavalcanti desligou-se formalmente do grupo e da disciplina. Uma versão preliminar de rascunho arquivada em 17/11 ainda espelhava a estrutura inicial antes da consolidação desse desligamento. No documento definitivo do Marco 3, registramos com total clareza e transparência o crédito devido pelas contribuições de Mateus circunscritas exclusivamente aos Marcos 1 e 2:
- Configuração inicial da infraestrutura reprodutível baseada no Nix (`flake.nix` e `flake.lock`);
- Implementação preliminar do mecanismo de governança e integridade dos dados brutos com verificação de hashes SHA-256 (`data/fontes.json`);
- Criação e hospedagem do repositório remoto inicial no GitHub (`mateusdcc/roubos-rj-aed`).

Todas as atividades subsequentes do Marco 3 — reformulação metodológica, desenho e formalização estatística das hipóteses H1, H2 e H3, implementação dos triênios suavizados, testes não paramétricos de Friedman em blocos pareados por grupos, cálculo do coeficiente de concordância $W$ de Kendall, teste de ponderação populacional, geração do mapa coroplético simétrico e confecção integral dos relatórios e slides — foram assumidas, reprogramadas e concluídas exclusivamente por nós dois, **Pedro Braga e Felipe** (Felipe identificado pelo prenome institucional conforme registros dos Marcos 1 e 2 na EMAp).

---

## 2. Matriz de Responsabilidades (Marco 3)

| Etapa / Dimensão do Projeto | Pedro Braga | Felipe |
|---|:---:|:---:|
| **Concepção e Formalização das Hipóteses** | Formalização de H1 e H3 e desenho do teste de triênios | Formalização de H2 e modelagem teórica regional |
| **Pipeline e Engenharia de Dados** | Normalização diária das taxas e script de suporte | Atualização do ambiente Nix (SciPy) e auditoria SHA-256 |
| **Modelagem e Estatística** | Métricas de dispersão (P90−P10, CV, Gini e Top 8) | Teste de Friedman em blocos, Kendall $W$ e ponderação |
| **Análise Temporal Suavizada** | Médias e variações por triênios (2014–16 vs. 2022–24) | Análise empírica do repique veicular de 2024 na Capital |
| **Visualizações Estáticas (Matplotlib/Seaborn)** | Gráficos 01, 03, 04 (painel triplo com CV), 08 e 10 (Mapa) | Gráficos 02, 06, 07 (percentual 0–100%) e 09 (Regional ISP) |
| **Visualização Cartográfica e Interativa** | Mapa coroplético simétrico com Matplotlib (`10_mapa_municipal.png`) | Gráfico regional em Plotly e exportação interativa |
| **Redação do Notebook e Relatório** | Seções 1, 2, 4, 6, 8 e 9 | Seções 3, 5, 7, 10 e 11 |
| **Apresentação Oral e Slides** | Slides interativos HTML (`apresentacao_marco3.html`) e compilação PDF | Revisão técnica e alinhamento visual dos slides |

---

## 3. Detalhamento das Contribuições no Marco 3

### Pedro Braga
- **Análise de Dispersão e Desigualdade Relativa:** Condução e interpretação analítica das métricas de dispersão intermunicipal (Pergunta 4), incorporando o Coeficiente de Variação (CV) estadual e metropolitano, o Índice de Gini e a concentração da soma das taxas nos 8 maiores municípios, demonstrando a dualidade entre o recuo absoluto (P90–P10) e a ampliação da desigualdade relativa territorial.
- **Análise Cartográfica Municipal por Triênios:** Desenvolvimento do mapa coroplético do Estado do Rio de Janeiro (`10_mapa_municipal.png`) utilizando a malha GeoJSON de `tbrugz/geodata-br` e `PatchCollection` do Matplotlib, calibrando a escala de cores simétrica centrada em zero para retratar com precisão quedas e aumentos municipais sem exagero visual.
- **Análise Temporal Suavizada por Triênios:** Condução da comparação entre o triênio inicial (2014–2016) e o final (2022–2024), comprovando que a elevação pontual da Capital em roubo de veículos decorreu exclusivamente do repique de 2024 (+37,1%), enquanto no triênio suavizado houve recuo expressivo de −22,1%.
- **Desenvolvimento dos Slides da Apresentação:** Construção dos slides interativos em HTML (`apresentacao_marco3.html`) e da versão em PDF de alta resolução (`apresentacao_marco3.pdf`), assegurando diagramação responsiva em tema escuro, conformidade visual e estrita fidelidade numérica às saídas do notebook.

### Felipe
- **Auditoria de Qualidade e Governança:** Condução da auditoria dos dados mensais que identificou os registros zerados em dez municípios fluminenses (2014 a abril de 2017), justificando o painel balanceado de 82 municípios e atualizando `data/fontes.json` com os hashes SHA-256 da base e da malha geográfica.
- **Ambiente de Reprodutibilidade:** Atualização da configuração do Nix (`flake.nix`), incluindo a biblioteca `scipy` para suportar testes estatísticos não paramétricos, garantindo reprodutibilidade estrita em qualquer máquina compatível.
- **Sazonalidade Avançada (Friedman, Kendall $W$ e Ponderação Populacional):** Implementação do teste não paramétrico de Friedman em blocos pareados por grupos regionais (Metropolitano ISP vs. Interior), cálculo do coeficiente de concordância $W$ de Kendall e teste sobre contagens brutas agregadas (efeito da ponderação populacional: município típico vs. habitante típico), demonstrando que não se detecta sazonalidade com significância estatística em roubos de rua na região metropolitana.
- **Decomposição Estrutural dos Roubos de Rua:** Reformulação da Figura 07 (`07_decomposicao_rua.png`) com painel direito em composição percentual (0–100%), sem truncamento de eixos, e articulação teórica das hipóteses explicativas baseadas na teoria das atividades rotineiras de Cohen e Felson (1979) e no aprimoramento da tipificação policial pelas delegacias.
- **Análise de Sensibilidade:** Execução do teste de sensibilidade comparando 82 vs. 92 municípios fluminenses no intervalo de 2018 a 2024, comprovando que a exclusão dos 10 municípios não distorceu as conclusões substantivas do estudo.

---

## 4. Declaração de Integridade

Declaramos que todo o código, análises estatísticas, visualizações e interpretações conceituais apresentados no Marco 3 foram elaborados por nós para fins estritamente acadêmicos na disciplina de AEDV da FGV EMAp, com base exclusiva em dados abertos públicos e oficiais do Instituto de Segurança Pública do Estado do Rio de Janeiro (ISP-RJ).
