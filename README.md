# Roubos no Rio de Janeiro: uma mudança igual para todos?

Projeto Final de Análise Exploratória de Dados e Visualização (AEDV), FGV EMAp, 2026.2.  
**Docente:** Prof. João Rulff  
**Integrantes (Marco 3):** Pedro Braga e Felipe.  
*(Nota: Mateus Cavalcanti colaborou nos Marcos 1 e 2 na infraestrutura inicial de reprodutibilidade e governança de dados; o Marco 3 foi integralmente assumido, revisado e finalizado por Pedro Braga e Felipe após a saída de Mateus do grupo).*

---

## Documentos da Entrega Final (Marco 3)

- **[Notebook Executado (Jupyter)](marco3.ipynb)** — Código-fonte completo com saídas, testes e gráficos executados.
- **[Artigo Final em HTML](marco3.html)** — Relatório acadêmico completo formatado e renderizado.
- **[Apresentação de Slides em PDF](apresentacao_marco3.pdf)** — Slides da apresentação final em formato PDF (11 slides).
- **[Apresentação de Slides Interativa](apresentacao_marco3.html)** — Slides interativos com atalhos de navegação e notas do orador (ocultas por padrão; tecla 'S' para alternar).
- **[Roteiro da Apresentação Oral](roteiro_apresentacao_marco3.md)** — Estrutura minuto a minuto (0:00 a 10:00, ~1.200 palavras de fala) e guia de perguntas e respostas para a banca examinadora.
- **[Declaração de Contribuições Individuais](contribuicoes.md)** — Histórico da equipe, matriz e detalhamento das responsabilidades técnicas de cada integrante.
- **[Visualização Interativa das Regiões](figuras/regioes_interativo.html)** — Gráfico Plotly com curvas regionais e inspeção de pontos (funciona offline).

---

## Síntese dos Achados e Hipóteses

No **Marco 3 (Entrega Final)**, investigamos 11 anos de registros policiais do ISP-RJ (2014 a 2024, 132 meses, 92 municípios). O trabalho respondeu às três hipóteses centrais da pesquisa:

1. **Hipótese 1 (Tendência Média — Corroborada):** A média municipal fluminense teve forte redução líquida de ponta a ponta: **−56,0%** em roubos de rua (de 13,99 para 6,15 por 100 mil hab.) e **−57,7%** em roubos de veículos (de 20,78 para 8,80 por 100 mil veículos). Na análise por triênios (2014–2016 vs. 2022–2024), a queda média foi de **−56,5%** em rua (17,99 para 7,83) e **−59,7%** em veículos (24,01 para 9,68). A trajetória não foi monótona: o estado enfrentou forte expansão durante a crise fiscal estadual, com picos em 2016 (rua, 20,89) e 2017 (veículos, 28,07), antes do recuo acelerado a partir de 2020.
2. **Hipótese 2 (Heterogeneidade Espacial — Corroborada):** A queda média oculta contrastes territoriais severos:
   - Na comparação pontual (2014 vs. 2024), a **Capital encerrou com saldo positivo em roubo de veículos (+3,1%)**, passando de 40,71 para 41,96. Contudo, a comparação por triênios suavizados revela recuo de **−22,1%** (de 46,26 para 36,03), demonstrando que o saldo positivo na ponta decorreu exclusivamente do repique atípico de **+37,1% em 2024** (sobre os 30,60 de 2023), e não de uma tendência decenal de alta.
   - Em sentido inverso, a Baixada Fluminense recuou **−65,2%** em veículos (de 71,96 para 25,05), Grande Niterói caiu **−60,1%** (de 57,69 para 23,04) e o Interior caiu **−76,6%** (de 8,06 para 1,89).
   - Na escala municipal, 65 das 82 cidades reduziram roubo de rua e 65 reduziram roubo de veículos no ponto a ponto (56 quedas simultâneas em ambas); por triênios, foram 78 quedas em rua e 69 em veículos. O maior aumento foi em **Belford Roxo**, cuja taxa veicular subiu **+17,45 pontos** pontualmente (95,78 para 113,22) e **+5,41 pontos** no triênio (88,68 para 94,09), contrastando com vizinhos que obtiveram fortes alívios, como Nilópolis (−93,98 pontos) e São Gonçalo (−74,68 pontos).
3. **Hipótese 3 (Sazonalidade — Validada para Veículos, Qualificada para Rua):** Avaliada pelo teste não paramétrico de **Friedman em blocos** e coeficiente de concordância $W$ de Kendall:
   - *Roubo de veículos:* Apresenta ciclo regular de verão/inverno em todo o estado, tanto no núcleo metropolitano ($Q = 27,81, p = 0,0035, W = 0,23$) quanto no Interior ($Q = 30,48, p = 0,0013, W = 0,25$). O pico ocorre em janeiro (~118 na metrópole) e o vale em julho (~88 na metrópole).
   - *Roubo de rua:* No núcleo metropolitano do ISP (Capital, Baixada e Grande Niterói), **não há sazonalidade com significância estatística** ($Q = 11,71, p = 0,3856, W = 0,10$; sem 2020: $p = 0,4407$). O perfil mensal metropolitano é plano (oscilação estreita entre 94,6 e 103,9). O aparente pico estadual de fevereiro decorre do Interior (122,4), formulando-se a hipótese de impacto do fluxo turístico litorâneo e Carnaval.
   - *Teste de Falácia Ecológica:* Ao agregar as contagens brutas estaduais (ponderação implícita pela população), a sazonalidade de rua perde totalmente a significância ($p = 0,1347$), enquanto a de veículos permanece significante ($p = 0,0163$).
4. **Dispersão e Desigualdade Relativa (Pergunta 4):** A distância absoluta interdecil (P90−P10) encolheu mais de 50% em ambas as categorias (−55,2% em rua e −65,3% em veículos), mas isso reflete apenas o rebaixamento do teto (P90), já que o P10 é frequentemente nulo. Por outro lado, a **desigualdade relativa aumentou expressivamente**:
   - O Coeficiente de Variação (CV) estadual subiu **+28,8%** em rua (1,65 para 2,12) e **+71,5%** em veículos (1,81 para 3,11); no núcleo metropolitano, o CV de veículos subiu de 0,63 para 0,91 (+44,1%).
   - O Índice de Gini subiu de 0,72 para 0,75 em rua e de 0,70 para 0,80 em veículos.
   - As 8 maiores cidades (10% dos municípios) passaram a concentrar **59,9%** dos roubos de rua (era 52,9% em 2014) e **69,4%** dos roubos de veículos (era 51,7% em 2014).
5. **Decomposição dos Roubos de Rua (Pergunta 5):** O perfil interno dos roubos de rua foi profundamente reconfigurado. Roubos a transeunte caíram **−61,6%** (de 80.461 para 30.868 no painel) e em coletivo caíram **−14,8%** (de 7.314 para 6.235). Em sentido oposto, os **roubos de celular aumentaram +176,1%** (de 7.758 para 21.416 ocorrências, após pico de 38.324 em 2018), elevando sua fatia de 8,1% para 36,6% do total (+28,5 p.p.). Essa transição é analisada sob duas hipóteses: valor/liquidez do bem (teoria das oportunidades de Cohen & Felson; o PIX acelerou a liquidez a partir do fim de 2020, embora o crescimento já ocorresse desde 2014) e aprimoramento na tipificação cartorária das delegacias policiais.

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

- **Integridade e verificação dos dados:** Todos os dados brutos em `data/` têm procedência e hash SHA-256 documentados em `data/fontes.json`. O notebook verifica automaticamente os hashes na inicialização.
- **Painel de 82 Municípios:** A auditoria inicial revelou que dez municípios registraram exatamente zero ocorrências policiais durante 40 meses consecutivos (2014 a abril de 2017). Para evitar interpretações espúrias decorrentes de ausência de registro, o painel principal utiliza 82 municípios balanceados.
- **Análise de Sensibilidade:** Para testar a robustez do recorte, reexecutamos os cálculos no intervalo de 2018 a 2024 incluindo todos os 92 municípios. As variações observadas foram praticamente idênticas (−69,6% vs. −69,7% em rua; −64,3% vs. −64,5% em veículos), confirmando que a exclusão técnica não distorceu a tendência agregada observada.
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
├── roteiro_apresentacao_marco3.md # Roteiro detalhado de fala e guia de perguntas
├── contribuicoes.md               # Declaração formal de contribuições individuais
├── flake.nix / flake.lock         # Configuração de reprodutibilidade em Nix
├── data/
│   ├── taxas_municipais.csv       # Séries mensais oficiais de taxas (ISP-RJ)
│   ├── contagens_municipais.csv   # Ocorrências brutas municipais (ISP-RJ)
│   ├── geojs-33-mun.json          # Malha geográfica GeoJSON dos municípios do RJ (IBGE)
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
    ├── 10_mapa_municipal.png      # Mapa coroplético de variações municipais por triênios
    └── regioes_interativo.html    # Curvas regionais interativas em Plotly
```
