# Roubos no Rio de Janeiro: uma mudança igual para todos?

Projeto Final de Análise Exploratória de Dados e Visualização (AEDV), FGV EMAp, 2026.2.  
**Docente:** Prof. João Rulff  
**Autores (Marco 3):** Pedro Tolentino Pires Braga e Felipe.  
*(Nota histórica: Mateus Cavalcanti colaborou nos Marcos 1 e 2 na infraestrutura inicial de reprodutibilidade e governança de dados; o Marco 3 foi integralmente assumido, reestruturado e finalizado por Pedro Braga e Felipe após o desligamento de Mateus do grupo e da disciplina).*

---

## Documentos da Entrega Final (Marco 3)

- **[Notebook Executado (Jupyter)](marco3.ipynb)** — Código-fonte completo com saídas, testes estatísticos e gráficos executados.
- **[Artigo Final em HTML](marco3.html)** — Relatório acadêmico completo formatado e renderizado.
- **[Apresentação de Slides em PDF](apresentacao_marco3.pdf)** — Slides da apresentação final em formato PDF (11 slides).
- **[Apresentação de Slides Interativa](apresentacao_marco3.html)** — Slides interativos com atalhos de navegação e notas dos autores (ocultas por padrão; tecla 'S' para alternar).
- **[Declaração de Contribuições Individuais](contribuicoes.md)** — Histórico da equipe, matriz e detalhamento das responsabilidades técnicas de cada integrante.
- **[Visualização Interativa das Regiões](figuras/regioes_interativo.html)** — Gráfico Plotly com curvas regionais e inspeção de pontos (funciona offline).

---

## Síntese dos Achados e Hipóteses

No **Marco 3 (Entrega Final)**, os autores Pedro Braga e Felipe investigam 11 anos de registros policiais do ISP-RJ (2014 a 2024, 132 meses, 92 municípios). Os pesquisadores respondem às três hipóteses centrais da pesquisa:

1. **Hipótese 1 (Tendência Média — Corroborada):** Os autores constatam que a média municipal fluminense teve forte redução líquida de ponta a ponta: **−56,0%** em roubos de rua (de 13,99 para 6,15 por 100 mil hab.) e **−57,7%** em roubos de veículos (de 20,78 para 8,80 por 100 mil veículos). Na análise por triênios suavizados (2014–2016 vs. 2022–2024), a queda média foi de **−56,5%** em rua (de **15,53 para 6,75**) e de **−59,7%** em veículos (de **20,47 para 8,24**). A trajetória não foi monótona: o estado enfrentou forte expansão no período da crise fiscal fluminense (hipótese de desestruturação fiscal e operacional), com picos em 2016 (rua, 20,89) e 2017 (veículos, 28,07), antes do recuo acelerado a partir de 2020.
2. **Hipótese 2 (Heterogeneidade Espacial — Corroborada):** Pedro Braga e Felipe demonstram que a queda média oculta contrastes territoriais severos:
   - Na comparação pontual (2014 vs. 2024), a **Capital encerrou com saldo positivo em roubo de veículos (+3,1%)**, passando de 40,71 para 41,96. Contudo, a comparação por triênios suavizados revela recuo de **−22,1%** (de 46,26 para 36,03), demonstrando que o saldo positivo na ponta decorreu exclusivamente do repique de **+37,1% em 2024** (sobre os 30,60 de 2023), e não de uma tendência decenal de elevação.
   - Em sentido inverso, as demais macrorregiões registraram fortes recuos em veículos: a Baixada Fluminense caiu **−45,7%** (de 72,30 para 39,24; na análise por triênios, recuou **−56,2%**, de 75,87 para 33,25), Grande Niterói caiu **−76,5%** (de 66,44 para 15,62; no triênio, **−74,3%**, de 62,13 para 15,96) e o Interior caiu **−76,6%** (de 8,06 para 1,89; no triênio, **−65,2%**, de 7,07 para 2,46).
   - Em roubo de rua em 2024, a Capital apresentou a **maior taxa média do estado (45,87 por 100 mil hab.)**, seguida por Baixada Fluminense (23,18), Grande Niterói (15,36) e Interior (1,71).
   - Na escala municipal, 65 das 82 cidades reduziram roubo de rua e 65 reduziram roubo de veículos no ponto a ponto (56 quedas simultâneas em ambas); por triênios, foram **78 quedas em rua e 70 em veículos**. O único município com elevação no triênio veicular foi **Belford Roxo**, cuja taxa veicular subiu **+17,45 pontos** pontualmente (95,78 para 113,22) e **+5,41 pontos** no triênio (88,68 para 94,09), tendo atingido pico histórico de **206,55 em 2018**, contrastando diretamente com vizinhos que obtiveram fortes alívios, como Nilópolis (**−94,76 pontos**) e São Gonçalo (**−92,40 pontos**).
3. **Hipótese 3 (Sazonalidade — Validada para Veículos, Qualificada para Rua):** Avaliada pelos pesquisadores por meio do teste não paramétrico de **Friedman em blocos pareados** e do coeficiente de concordância $W$ de Kendall:
   - *Roubo de veículos:* Apresenta ciclo regular de verão/inverno em todo o território estadual, tanto no núcleo metropolitano do ISP ($Q = 27,32, p = 0,0041, W = 0,23$) quanto no Interior ($Q = 30,94, p = 0,0011, W = 0,26$). O ápice ocorre em janeiro (118,2 na metrópole e 123,4 no painel) e os vales ocorrem em setembro no painel (80,2) e em julho na metrópole (88,6).
   - *Roubo de rua:* No núcleo metropolitano do ISP (Capital, Baixada e Grande Niterói), os autores **não detectaram sazonalidade com significância estatística** ($Q = 11,06, p = 0,4386, W = 0,09$; removendo 2020: $p = 0,4681$). O perfil mensal metropolitano é praticamente plano (fevereiro registra 100,4, e a oscilação situa-se estreitamente entre 92,9 em dezembro e 104,2 em outubro). O aparente pico de fevereiro no painel estadual (115,5) decorre exclusivamente do Interior (119,7), formulando-se a hipótese interpretativa de efeito do fluxo turístico litorâneo e das festividades de Carnaval.
   - *Efeito da Ponderação Populacional (Município Típico vs. Habitante Típico):* Ao agregar as contagens estaduais brutas (ponderação implícita pelo tamanho populacional), a sazonalidade de rua não atinge significância estatística ($p = 0,1347$), enquanto a de veículos permanece significante ($p = 0,0163$).
4. **Dispersão e Desigualdade Relativa (Pergunta 4):** Os autores observam que a distância absoluta interdecil (P90−P10) encolheu mais de 50% em ambas as modalidades (−55,2% em rua e −65,3% em veículos), mas ressalvam que isso decorre do rebaixamento do teto (P90), haja vista que o P10 é frequentemente nulo. Por outro lado, **a desigualdade relativa aumentou expressivamente**:
   - O Coeficiente de Variação (CV) estadual subiu **+12,8%** em rua (**1,65 para 1,86**) e **+41,1%** em veículos (**1,61 para 2,27**); no núcleo metropolitano, o CV de veículos subiu de 0,63 para 0,91 (+44,1%).
   - O Índice de Gini subiu de 0,72 para 0,75 em rua e de **0,70 para 0,81** em veículos.
   - A soma das taxas municipais dos 8 municípios com maiores índices passou a concentrar **59,9%** em roubo de rua (era 52,9% em 2014) e **69,4%** em roubo de veículos (era 51,7% em 2014).
5. **Decomposição dos Roubos de Rua (Pergunta 5):** Pedro Braga e Felipe evidenciam que o perfil interno dos roubos de rua sofreu profunda reconfiguração. Roubos a transeunte caíram **−61,6%** (de 80.461 para 30.868 no painel) e em coletivo caíram **−14,8%** (de 7.314 para 6.235). Em sentido oposto, os **roubos de celular aumentaram +176,1%** (de 7.758 para 21.416 ocorrências, após pico de **26.779 em 2019**), elevando sua fatia de 8,1% para 36,6% do total (+28,5 p.p.). Essa transição é discutida pelos autores à luz da **teoria das atividades rotineiras de Cohen e Felson (1979)** — valor intrínseco, atratividade e portabilidade do aparelho móvel, cuja participação cresceu em proporção estável antes e depois de 2019 — e da hipótese complementar de aprimoramento na tipificação cartorária pelas delegacias de polícia civil.

---

## Como Executar

### Opção A: Ambiente Reprodutível com Nix (macOS e Linux)

O repositório conta com `flake.nix` e `flake.lock` para congelamento estrito de dependências (nixpkgs, Python 3.12, SciPy e stack científica):

```bash
git clone https://github.com/mateusdcc/roubos-rj-aed.git
cd roubos-rj-aed
nix develop
jupyter lab marco3.ipynb
```

Para reexecutar o notebook do início ao fim e atualizar o HTML:

```bash
nix develop --command jupyter nbconvert --to notebook --execute --inplace marco3.ipynb --ExecutePreprocessor.timeout=300
nix develop --command jupyter nbconvert --to html marco3.ipynb
```

### Opção B: Ambiente Python Local (Windows, macOS ou Linux)

O projeto é compatível com Python 3.10+ e bibliotecas padrão da stack científica:

```bash
pip install pandas numpy matplotlib seaborn plotly scipy jupyter nbconvert
jupyter nbconvert --to notebook --execute --inplace marco3.ipynb --ExecutePreprocessor.timeout=300
jupyter nbconvert --to html marco3.ipynb
```

---

## Dados, Auditoria e Cautelas Metodológicas

- **Integridade e verificação dos dados:** Todos os dados brutos em `data/` têm procedência e hash SHA-256 documentados em `data/fontes.json`. O notebook verifica automaticamente os hashes na inicialização. A malha geográfica vetorial GeoJSON foi obtida no repositório comunitário `tbrugz/geodata-br` (baseada na malha municipal do IBGE).
- **Painel Balanceado de 82 Municípios:** A auditoria dos pesquisadores identificou que dez municípios registraram exatamente zero ocorrências policiais durante 40 meses consecutivos (2014 a abril de 2017). Para evitar interpretações distorcidas por ausência de registro, os autores adotaram o painel balanceado de 82 municípios.
- **Análise de Sensibilidade:** Para testar a robustez do recorte, Pedro Braga e Felipe recalcularam as trajetórias no intervalo de 2018 a 2024 incluindo todos os 92 municípios fluminenses. As variações observadas foram praticamente idênticas (82 mun: rua de 20,20 para 6,15 [−69,6%], veículos de 24,67 para 8,80 [−64,3%]; 92 mun: rua de 18,14 para 5,49 [−69,7%], veículos de 22,27 para 7,91 [−64,5%]), confirmando que a exclusão técnica não distorceu a tendência agregada observada.
- **Unidades Distintas:** Roubo de rua utiliza população residente (taxa por 100 mil habitantes); roubo de veículos utiliza frota cadastrada (taxa por 100 mil veículos). Não comparamos grandezas absolutas com denominadores distintos.
- **Médias Territoriais sem Ponderação:** Cada município possui peso unitário nas médias do painel e das regiões, descrevendo o comportamento do município fluminense típico sem que a Capital concentre unilateralmente o indicador.
- **Limitações metodológicas:** A base registra comunicações oficiais à polícia civil, sujeitas à cifra oculta da subnotificação e incentivos de queixa (e.g., boletim para acionamento de seguro). A análise é de caráter exploratório e descritivo, sem atribuição de causalidade a políticas públicas específicas.

---

## Estrutura do Repositório

```text
├── README.md                      # Documentação geral e guia da entrega final
├── marco3.ipynb                   # Notebook final executado
├── marco3.html                    # Artigo final exportado em HTML
├── apresentacao_marco3.pdf        # Apresentação de slides em PDF (11 slides)
├── apresentacao_marco3.html       # Apresentação interativa de slides (11 slides)
├── contribuicoes.md               # Declaração formal de contribuições individuais
├── flake.nix / flake.lock         # Configuração de reprodutibilidade em Nix
├── data/
│   ├── taxas_municipais.csv       # Séries mensais oficiais de taxas (ISP-RJ)
│   ├── contagens_municipais.csv   # Ocorrências brutas municipais (ISP-RJ)
│   ├── geojs-33-mun.json          # Malha geográfica GeoJSON dos municípios do RJ (tbrugz/geodata-br)
│   ├── dicionario_taxas.xlsx      # Dicionário de variáveis e unidades
│   └── fontes.json                # Metadados e hashes SHA-256
└── figuras/
    ├── 01_trajetorias.png         # Trajetória temporal média das taxas
    ├── 02_regioes.png             # Comparação regional (4 macrorregiões)
    ├── 03_mudancas_municipais.png # Maiores aumentos e quedas por município
    ├── 04_dispersao.png           # Intervalo interdecil (P10 a P90) e CV anual
    ├── 06_perfil_mensal.png       # Perfis mensais médios (taxas diárias indexadas)
    ├── 07_decomposicao_rua.png    # Decomposição em volume e composição percentual de rua
    ├── 08_sazonalidade_heatmap.png # Mapa de calor ano x mês na mesma escala
    ├── 09_sazonalidade_regional.png# Perfis sazonais comparativos: Metropolitana vs Interior
    ├── 10_mapa_municipal.png      # Mapa coroplético de variações municipais por triênios (escala simétrica)
    └── regioes_interativo.html    # Curvas regionais interativas em Plotly
```
