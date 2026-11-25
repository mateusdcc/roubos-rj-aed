# Roubos no Rio de Janeiro: uma mudança igual para todos?

Projeto final de Análise Exploratória de Dados e Visualização (FGV EMAp, 2026.2), prof. João Rulff.  
**Autores:** Pedro Tolentino Pires Braga e Felipe Rodolfo Pianetti.  
*(Mateus Cavalcanti fez parte do grupo nos Marcos 1 e 2 e criou o repositório na conta dele. Ele saiu da disciplina no começo do Marco 3.)*

---

## Documentos da entrega final (Marco 3)

- **[Notebook executado (Jupyter)](marco3.ipynb)** — Código completo com saídas, testes e gráficos executados.
- **[Notebook exportado em HTML](marco3.html)** — Versão HTML gerada a partir da última execução do notebook.
- **[Apresentação de slides em PDF](apresentacao_marco3.pdf)** — Slides exportados a partir da apresentação HTML (12 páginas).
- **[Apresentação de slides interativa](apresentacao_marco3.html)** — Slides com atalhos de navegação e notas ocultas por padrão (tecla `S` para mostrar/ocultar).
- **[Contribuições individuais](contribuicoes.md)** — Divisão das atividades entre os autores no Marco 3.
- **[Gráfico interativo das regiões](figuras/regioes_interativo.html)** — Curvas regionais em Plotly (funciona offline).

---

## Síntese dos resultados

Usamos os dados mensais do ISP-RJ de 2014 a 2024 para ver se a queda dos roubos de rua e de veículo foi parecida entre regiões e municípios do Rio de Janeiro. Trabalhamos com um painel de 82 dos 92 municípios (99,2% da população estimada em 2024), porque dez municípios aparecem com zero em todos os crimes até abril de 2017.

- **Trajetória média (Pergunta 1):** A média municipal caiu 56,0% em roubo de rua (13,99 → 6,15) e 57,7% em roubo de veículo (20,78 → 8,80) entre 2014 e 2024 (nos triênios 2014–2016 e 2022–2024, passou de 15,53 → 6,75 [−56,5%] e de 20,47 → 8,24 [−59,7%]), com picos em 2016 e 2017 nos anos da crise fiscal do estado.
- **Regiões e municípios (Perguntas 2 e 3):** Grande Niterói caiu 76,5% em veículos e a Baixada caiu 45,7%, enquanto a Capital fechou 2024 3,1% acima de 2014 por causa da alta de 37,1% só em 2024 (nos triênios, caiu 22,1%). Nos triênios em veículos, Belford Roxo teve a maior alta (+5,41), seguido por Rio Claro (+3,49) e outros nove municípios com menos de 1 ponto; as maiores quedas ocorreram em outros municípios metropolitanos, como Nilópolis (−94,76) e São Gonçalo (−92,40).
- **Dispersão e desigualdade relativa (Pergunta 4):** A faixa P90−P10 encolheu porque o teto (P90) caiu, mas a desigualdade relativa aumentou: o CV de veículos subiu de 1,61 para 2,27 (+41,1%), o CV metropolitano foi de 0,63 para 0,91 (+44,3%) e o Gini passou de 0,70 para 0,81.
- **Composição de rua (Pergunta 5):** O roubo de celular passou de 8,1% dos roubos de rua em 2014 para 22,2% em 2019 e 36,6% em 2024, com maior volume em 2019 (26.779 registros).
- **Sazonalidade (Pergunta 6):** A H3 confirma-se para veículos e não se confirma para rua. Roubo de veículo tem ciclo anual nas duas regiões (maior índice médio em janeiro, 123,9 no painel e 118,2 na região metropolitana; menor em setembro no painel, 80,1, e em julho na metrópole, 88,6), significativo mesmo após correção de Bonferroni (W entre 0,23 e 0,30). Roubo de rua não mostra sazonalidade na região metropolitana (p = 0,4386), e o pico de fevereiro no painel (115,5) vem do Interior (119,7), onde o teste só passa sem correção (p = 0,0337) e deixa de passar sem 2020 (p = 0,0603). Nas contagens somadas do estado, p = 0,1348 para rua e p = 0,0164 para veículos.

Os detalhes e as tabelas completas estão no [marco3.ipynb](marco3.ipynb).

---

## Como executar

### Opção A: ambiente reprodutível com Nix (macOS e Linux)

O repositório traz `flake.nix` e `flake.lock` com versões fixas das dependências (nixpkgs, Python 3.12, SciPy e demais bibliotecas):

```bash
git clone https://github.com/mateusdcc/roubos-rj-aed.git
cd roubos-rj-aed
nix develop
jupyter lab marco3.ipynb
```

Para reexecutar o notebook do começo ao fim e exportar o HTML:

```bash
nix develop --command jupyter nbconvert --to notebook --execute --inplace marco3.ipynb --ExecutePreprocessor.timeout=300
nix develop --command jupyter nbconvert --to html marco3.ipynb
```

### Opção B: ambiente Python local (Windows, macOS ou Linux)

Requer **Python 3.12 ou mais novo** (versões testadas na última execução: Python 3.12.10, pandas 3.1.1, numpy 2.5.1, scipy 1.18.0, matplotlib 3.11.2, seaborn 0.13.2 e plotly 7.1.0):

```bash
pip install pandas numpy scipy matplotlib seaborn plotly jupyter nbconvert
jupyter nbconvert --to notebook --execute --inplace marco3.ipynb --ExecutePreprocessor.timeout=300
jupyter nbconvert --to html marco3.ipynb
```

---

## Dados e método

- **Integridade dos dados:** Todos os arquivos em `data/` têm URL, data de acesso e hash SHA-256 documentados em `data/fontes.json` e verificados no início do notebook. A malha municipal em GeoJSON veio do repositório `tbrugz/geodata-br`.
- **Painel balanceado de 82 municípios:** Dez municípios aparecem com zero em todas as ocorrências de janeiro de 2014 a abril de 2017; os dados não dizem o motivo. Para evitar aumentos artificiais a partir de maio de 2017, usamos 82 municípios no painel principal e testamos os 92 municípios de 2018 a 2024 (diferença menor que 0,2 p.p.: −69,6% vs. −69,7% em rua; −64,3% vs. −64,5% em veículos).
- **Unidades e pesos:** Roubo de rua é medido em taxa por 100 mil habitantes e roubo de veículo em taxa por 100 mil veículos, ambas calculadas pelo ISP. As médias de região e do painel dão peso 1 a cada município (descrevem o município típico).
- **Limitações:** As bases registram ocorrências comunicadas à Polícia Civil (sujeitas à subnotificação); outubro a dezembro de 2024 ainda estão na fase 2 do ISP (consolidado sem errata); e o trabalho é descritivo, sem inferência causal.

---

## Estrutura do repositório

```text
├── README.md                       # Guia geral do repositório e resumo dos resultados
├── marco3.ipynb                    # Notebook final executado
├── marco3.html                     # Notebook exportado em HTML
├── apresentacao_marco3.pdf         # Slides em PDF (gerados a partir do HTML)
├── apresentacao_marco3.html        # Apresentação interativa de slides (12 slides)
├── contribuicoes.md                # Divisão das atividades entre os autores
├── flake.nix / flake.lock          # Ambiente reprodutível em Nix
├── data/
│   ├── taxas_municipais.csv        # Taxas mensais por município (ISP-RJ)
│   ├── contagens_municipais.csv    # Ocorrências mensais por município (ISP-RJ)
│   ├── geojs-33-mun.json           # Malha GeoJSON dos municípios do RJ (tbrugz/geodata-br)
│   ├── dicionario_taxas.xlsx       # Dicionário de variáveis e unidades do ISP-RJ
│   └── fontes.json                 # URLs, datas de acesso e hashes SHA-256
└── figuras/
    ├── 01_trajetorias.png          # Trajetória média anual no painel
    ├── 02_regioes.png              # Trajetórias por região do ISP
    ├── 03_mudancas_municipais.png  # Maiores diferenças absolutas por município
    ├── 04_dispersao.png            # Faixa P10–P90, mediana e coeficiente de variação
    ├── 06_perfil_mensal.png        # Perfis mensais médios com faixa P10–P90
    ├── 07_decomposicao_rua.png     # Volume e participação percentual em roubos de rua
    ├── 08_sazonalidade_heatmap.png # Matriz ano × mês na mesma escala de cores
    ├── 09_sazonalidade_regional.png# Perfis sazonais: região metropolitana vs. Interior
    ├── 10_mapa_municipal.png       # Mapa de variação por triênios com aumentos destacados
    └── regioes_interativo.html     # Curvas regionais interativas em Plotly
```
