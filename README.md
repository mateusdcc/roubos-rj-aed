# Roubos no Rio de Janeiro: uma mudança igual para todos?

Projeto Final de Análise Exploratória de Dados e Visualização (AEDV), FGV EMAp, 2026.2.  
**Docente:** Prof. João Rulff  
**Integrantes (Marco 3):** Pedro Braga e Felipe.  
*(Nota: Mateus Cavalcanti colaborou nos Marcos 1 e 2 na infraestrutura inicial de reprodutibilidade e governança de dados; o Marco 3 foi integralmente assumido, revisado e finalizado por Pedro Braga e Felipe após a saída de Mateus do grupo).*

---

## Documentos da Entrega Final (Marco 3)

- **[Notebook Executado (Jupyter)](marco3.ipynb)** — Código-fonte completo com saídas e gráficos executados.
- **[Artigo Final em HTML](marco3.html)** — Relatório completo formatado como artigo acadêmico (baixe e abra no navegador).
- **[Apresentação de Slides em PDF](apresentacao_marco3.pdf)** — Slides da apresentação final em formato PDF (11 slides).
- **[Apresentação de Slides Interativa (10 min)](apresentacao_marco3.html)** — Slides com cronometragem por bloco, notas do orador e atalhos de navegação.
- **[Roteiro da Apresentação Oral](roteiro_apresentacao_marco3.md)** — Estrutura minuto a minuto (0:00 a 10:00), falas sugeridas e guia de respostas para a banca.
- **[Declaração de Contribuições Individuais](contribuicoes.md)** — Histórico da equipe, matriz e detalhamento das responsabilidades técnicas de cada integrante.
- **[Visualização Interativa das Regiões](figuras/regioes_interativo.html)** — Gráfico Plotly com curvas regionais e inspeção de pontos (funciona offline).

---

## Síntese dos Achados e Hipóteses

No **Marco 3 (Entrega Final)**, investigamos 11 anos de registros policiais do ISP-RJ (2014 a 2024, 132 meses, 92 municípios). O trabalho respondeu às três hipóteses centrais da pesquisa:

1. **Hipótese 1 (Tendência Média — Confirmada):** A média municipal fluminense teve forte redução líquida de ponta a ponta: **−56,0%** em roubos de rua (de 13,99 para 6,15 por 100 mil hab.) e **−57,7%** em roubos de veículos (de 20,78 para 8,80 por 100 mil veículos). Contudo, a trajetória não foi monótona: o estado registrou forte escalada intermediária, atingindo picos em 2016 (rua, 20,89) e 2017 (veículos, 28,07), antes do recuo a patamares mais baixos.
2. **Hipótese 2 (Heterogeneidade Espacial — Confirmada):** A queda média oculta contrastes territoriais severos. Na contramão do restante do estado, a **Capital aumentou seus roubos de veículos em +3,1%** na década (41,96 em 2024 vs. 40,71 em 2014; na série histórica, 2014 foi o menor nível pré-pandemia e 5º menor dos 11 anos, tendo pico em 2017 de 71,12 e vale de 30,60 em 2023, seguido por repique de 37,1% em 2024). Em contraste, a Baixada recuou 45,7% (72,30 para 39,24) e a Grande Niterói caiu 76,5% (66,44 para 15,62). No nível municipal, 56 cidades tiveram queda simultânea em ambas as categorias (65 em rua e 65 em veículos). O maior aumento foi em **Belford Roxo**, cuja taxa veicular subiu **+17,45 pontos** (de 95,78 para 113,22, com pico de 206,55 em 2018), enquanto cidades metropolitanas como Nilópolis (−94,76 pontos) e São Gonçalo (−92,40 pontos) registraram fortes reduções.
3. **Hipótese 3 (Sazonalidade — Validada para Veículos, Heterogênea para Rua):** Avaliada pelo teste não paramétrico de **Friedman em blocos** (anos como blocos, meses como tratamentos). O teste atesta significância a 5% com e sem o ano atípico de 2020 em ambas as categorias:
   - *Roubo de veículos:* $Q = 35,74, p = 0,00019$ (11 anos); $Q = 30,05, p = 0,00156$ (sem 2020). Apresenta padrão consistente em todo o estado (pico em janeiro de ~118 na Metropolitana e ~125 no Interior; vale no inverno de ~88 em julho na Metropolitana e ~76 em setembro no Interior).
   - *Roubo de rua:* $Q = 21,78, p = 0,0261$ (11 anos); $Q = 20,58, p = 0,0379$ (sem 2020). Contudo, a desagregação regional comprova que a curva na Região Metropolitana é praticamente plana (variando estreitamente entre 92,9 e 104,2); o pico de fevereiro decorre do Interior (119,7, impulsionado pelo turismo de verão e Carnaval). Além disso, ano a ano o mês de maior taxa foi agosto em 3 anos, e fevereiro em apenas 2 anos.
4. **Dispersão Intermunicipal (Pergunta 4):** A dispersão absoluta medida pelo intervalo interdecil (P90−P10) encolheu mais de 50% em ambas as categorias (de 41,12 para 18,43 em rua; de 58,84 para 20,43 em veículos). No entanto, a desigualdade relativa medida pelo Coeficiente de Variação (CV) **aumentou**: +12,8% em rua (de 1,65 para 1,86) e +41,1% em veículos (de 1,61 para 2,27), indicando que a média recuou mais rápido do que as disparidades relativas entre municípios.
5. **Decomposição dos Roubos de Rua (Pergunta 5):** O perfil das ocorrências de rua sofreu profunda alteração. Entre 2014 e 2024, roubos a transeunte caíram **−61,6%** (de 80.461 para 30.868 no painel) e em coletivo caíram **−14,8%** (de 7.314 para 6.235). Em sentido oposto, os **roubos de celular aumentaram +176,1%** (de 7.758 para 21.416 ocorrências, após pico de 26.779 em 2019), elevando sua participação de 8,1% para 36,6% do total (+28,5 p.p.). Essa transição é compatível com a teoria das atividades rotineiras de Cohen e Felson (1979) — atratividade de smartphones portáteis de alto valor de revenda — combinada a prováveis aprimoramentos nas rotinas de registro das delegacias (o PIX, lançado no fim de 2020, não explica a alta concentrada entre 2014 e 2019).

---

## Como Executar

### Opção A: Ambiente Reprodutível com Nix (macOS e Linux)

O repositório conta com `flake.nix` e `flake.lock` para congelamento estrito de dependências (nixpkgs, Python 3.12, SciPy e stack de dados):

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
- **Análise de Sensibilidade:** Para testar a robustez do recorte, reexecutamos os cálculos no intervalo de 2018 a 2024 incluindo todos os 92 municípios. As variações observadas foram muito próximas (−69,6% vs. −69,7% em rua; −64,3% vs. −64,5% em veículos), confirmando que a exclusão não alterou a tendência agregada observada.
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
├── apresentacao_marco3.html       # Apresentação interativa de slides (10 min)
├── roteiro_apresentacao_marco3.md # Roteiro detalhado de fala e guia de perguntas
├── contribuicoes.md               # Declaração formal de contribuições individuais
├── flake.nix / flake.lock         # Configuração de reprodutibilidade em Nix
├── data/
│   ├── taxas_municipais.csv       # Séries mensais oficiais de taxas (ISP-RJ)
│   ├── contagens_municipais.csv   # Ocorrências brutas municipais (ISP-RJ)
│   ├── dicionario_taxas.xlsx      # Dicionário de variáveis e unidades
│   └── fontes.json                # Metadados e hashes SHA-256
└── figuras/
    ├── 01_trajetorias.png         # Trajetória temporal média das taxas
    ├── 02_regioes.png             # Comparação regional (4 macrorregiões)
    ├── 03_mudancas_municipais.png # Maiores aumentos e quedas por município
    ├── 04_dispersao.png           # Intervalo interdecil (P10 a P90)
    ├── 05_composicao.png          # Participação percentual do roubo de celular
    ├── 06_perfil_mensal.png       # Perfis mensais médios
    ├── 07_decomposicao_rua.png    # Decomposição dos roubos de rua
    ├── 08_sazonalidade_heatmap.png# Mapa de calor e matriz ano x mês
    ├── 09_sazonalidade_regional.png# Perfis comparativos: Metropolitana vs. Interior
    └── regioes_interativo.html    # Gráfico interativo exportado em Plotly
```
