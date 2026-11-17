# Roubos no Rio de Janeiro: uma mudança igual para todos?

Projeto Final de Análise Exploratória de Dados e Visualização (AEDV), FGV EMAp, 2026.2.  
**Docente:** Prof. João Rulff  
**Integrantes:** Mateus Cavalcanti, Pedro Braga e Felipe.

---

## 📌 Documentos da Entrega Final (Marco 3)

- 📓 **[Notebook Executado (Jupyter)](marco3.ipynb)** — Código-fonte completo com saídas e gráficos.
- 📄 **[Artigo Final em HTML](marco3.html)** — Relatório completo formatado como artigo acadêmico (baixe e abra no navegador).
- 🖥️ **[Apresentação de Slides Interativa (10 min)](apresentacao_marco3.html)** — Slides com cronometragem por bloco, notas do orador e atalhos de navegação.
- 🎙️ **[Roteiro da Apresentação Oral](roteiro_apresentacao_marco3.md)** — Estrutura minuto a minuto (0:00 a 10:00), falas sugeridas e guia de defesa para perguntas da banca.
- 👥 **[Declaração de Contribuições Individuais](contribuicoes.md)** — Matriz balanceada de responsabilidades técnicas conforme critérios da ementa (Implementação: 35%, Design: 30%, Análise: 20%, Comunicação: 10%, Equipe: 5%).
- 🌐 **[Visualização Interativa das Regiões](figuras/regioes_interativo.html)** — Gráfico Plotly com curvas regionais e inspeção de pontos (funciona offline).

---

## 🔍 Síntese dos Achados e Hipóteses

No **Marco 3 (Entrega Final)**, investigamos 11 anos de registros policiais do ISP-RJ (2014 a 2024, 132 meses, 92 municípios). O trabalho respondeu conclusivamente às três hipóteses centrais da pesquisa:

1. **Hipótese 1 (Tendência Média — Confirmada):** A média municipal fluminense teve forte redução líquida de ponta a ponta: **−56,0%** em roubos de rua (de 13,99 para 6,15 por 100 mil hab.) e **−57,6%** em roubos de veículos (de 20,78 para 8,80 por 100 mil veículos). Contudo, a trajetória não foi monótona: o estado sofreu grave escalada entre 2014 e 2017 decorrente da crise fiscal pós-olímpica, atingindo picos em 2016 (rua) e 2017 (veículos) antes de recuar.
2. **Hipótese 2 (Fratura Espacial — Confirmada):** A queda média oculta contrastes territoriais severos. Na contramão do restante do estado, a **Capital aumentou seus roubos de veículos em +3,1%** na década (41,96 em 2024 vs. 40,71 em 2014), enquanto a Baixada caiu 45,5% e a Grande Niterói despencou 75,9%. No nível municipal, **Belford Roxo** apresentou explosão atípica de **+17,43 pontos** em veículos, contrastando com quedas de mais de 90 pontos em vizinhos metropolitanos.
3. **Hipótese 3 (Sazonalidade — Validada Estatisticamente):** A hipótese estacional, deixada em aberto no Marco 2, foi comprovada formalmente pelo teste não-paramétrico de **Kruskal-Wallis** ($H = 24,34, p = 0,011$ para rua; $H = 39,83, p = 0,00004$ para veículos). Os picos concentram-se no verão fluminense (fevereiro para rua e janeiro para veículos), e os vales no inverno. O choque atípico de abril/maio de 2020 (lockdown) não anula o padrão ($p < 0,05$ sem 2020).
4. **A Grande Mutação Estrutural (Pergunta 5):** O roubo de rua sofreu substituição profunda: enquanto roubos tradicionais a transeunte despencaram **−61,6%** (de 80.461 para 30.868 no painel) e em coletivo caíram **−14,8%**, os **roubos de celular saltaram +176,0%** (de 7.758 para 21.416 registros), passando de 8,1% para 36,6% do total de roubos de rua. O smartphone converteu-se no ativo preferencial do crime patrimonial urbano (PIX, aplicativos bancários e mercado clandestino de peças).

---

## 💻 Como Executar

### Opção A: Ambiente Reprodutível com Nix (macOS e Linux)

O repositório conta com `flake.nix` e `flake.lock` para congelamento estrito de dependências (nixpkgs, Python e bibliotecas):

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

## 📊 Dados, Auditoria e Cautelas Metodológicas

- **Integridade Criptográfica:** Todos os dados brutos em `data/` têm procedência e hash SHA-256 documentados em `data/fontes.json`. O notebook verifica automaticamente os hashes na inicialização.
- **Painel de 82 Municípios:** A auditoria inicial revelou que dez municípios registraram exatamente zero ocorrências policiais durante 40 meses consecutivos (2014 a abril de 2017). Para evitar interpretações espúrias de aumento artificial de criminalidade, o painel principal utiliza 82 municípios balanceados.
- **Análise de Sensibilidade:** Para testar viés de seleção, reexecutamos os cálculos no intervalo de 2018 a 2024 incluindo todos os 92 municípios. As variações observadas foram equivalentes (−69,5% vs. −70,5% em rua; −64,3% vs. −64,9% em veículos), atestando a robustez do recorte.
- **Unidades Não Comparáveis:** Roubo de rua usa habitantes (por 100 mil hab.); roubo de veículo usa frota cadastrada (por 100 mil veículos). Não somamos grandezas com denominadores diferentes nem geramos taxas agregadas fictícias.
- **Médias Territoriais sem Ponderação:** Cada município possui peso unitário nas médias do painel e das regiões, descrevendo a realidade do município típico fluminense sem que a Capital concentre unilateralmente o indicador.
- **Limites Epistemológicos:** A base registra comunicações oficiais à polícia civil, sujeitas à cifra oculta da subnotificação e incentivos cadastrais (e.g., boletim para acionamento de seguro). A análise é de caráter exploratório e descritivo-inferencial, sem imputação de nexo causal a políticas públicas específicas.

---

## 📁 Estrutura do Repositório

```text
├── README.md                      # Documentação geral e guia da entrega final
├── marco3.ipynb                   # Notebook final executado
├── marco3.html                    # Artigo final exportado em HTML
├── apresentacao_marco3.html       # Apresentação interativa de slides (10 min)
├── roteiro_apresentacao_marco3.md # Roteiro detalhado de fala e defesa da banca
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
    ├── 06_perfil_mensal.png       # Perfis mensais e impacto de 2020
    ├── 07_decomposicao_rua.png    # Decomposição tripla dos roubos de rua
    ├── 08_sazonalidade_heatmap.png# Mapa de calor e matriz ano x mês
    └── regioes_interativo.html    # Gráfico interativo exportado em Plotly
```
