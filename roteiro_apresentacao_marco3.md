# Roteiro da Apresentação Final — Marco 3 (10 minutos)
**Disciplina:** Análise Exploratória de Dados e Visualização — FGV EMAp (2026.2)  
**Professor:** João Rulff  
**Título do Projeto:** Roubos no Rio de Janeiro: uma mudança igual para todos?  
**Integrantes:** Mateus Cavalcanti, Pedro Braga e Felipe  
**Base do Projeto:** `marco3.ipynb` e `marco3.html`  

---

## Estrutura Temporal dos 10 Minutos

| Bloco | Tempo | Tema | Visualização / Slide |
|---|---|---|---|
| 1 | 0:00 – 1:15 | Abertura, Contexto e Pergunta de Pesquisa | Slide 1: Título e Hipóteses |
| 2 | 1:15 – 2:30 | Dados, Auditoria e Cautelas Metodológicas | Slide 2: Fontes e Painel dos 82 Municípios |
| 3 | 2:30 – 3:45 | Trajetória Agregada e Hipótese 1 | Slide 3: `figuras/01_trajetorias.png` |
| 4 | 3:45 – 5:15 | Disparidade Regional e Municipal (H2) | Slides 4 e 5: `02_regioes.png` e `03_mudancas_municipais.png` |
| 5 | 5:15 – 6:30 | Dispersão (P90-P10 e CV) e Roubos de Celular | Slides 6 e 7: `04_dispersao.png`, `05_composicao.png` e `07_decomposicao_rua.png` |
| 6 | 6:30 – 7:45 | Sazonalidade e Teste de Friedman (H3) | Slides 8 e 9: `06_perfil_mensal.png` e `08_sazonalidade_heatmap.png` |
| 7 | 7:45 – 8:45 | Análise de Sensibilidade (82 vs 92 Municípios) | Slide 10: Comparação de 82 vs 92 Municípios |
| 8 | 8:45 – 10:00 | Conclusões Finais, Limites e Fechamento | Slide 11: Síntese, Limites e Q&A |

---

## Minuto a Minuto: O que Projetar, Falar e Defender

### 0:00 – 1:15 | Bloco 1: Abertura e Motivação
**Slide na Tela:** Slide 1 — Título, Equipe e as Três Hipóteses de Pesquisa.

**Fala Sugerida:**
> *"Bom dia, professor João, colegas. Nosso trabalho parte de uma questão central sobre dados de segurança pública: quando as estatísticas agregadas de roubo caem no Estado do Rio de Janeiro, será que essa redução se distribui de maneira uniforme entre os municípios?  
> Indicadores globais podem esconder contrastes importantes. Uma média estadual em queda pode conviver com estabilidade ou até aumento de crimes em determinadas regiões, além de transformações na própria natureza das ocorrências.  
> Para investigar essa questão, analisamos 11 anos de registros do Instituto de Segurança Pública (ISP-RJ), de 2014 a 2024. Estruturamos nossa análise em torno de três hipóteses:  
> Primeira: as taxas médias municipais de 2024 são substancialmente menores que as de 2014.  
> Segunda: essa mudança ocorreu de forma espacialmente desigual entre regiões e municípios.  
> Terceira: existem padrões sazonais mensais consistentes ao longo do ano.  
> Vamos aos dados e decisões metodológicas."*

**Notas para a Apresentação:**
- Não antecipe os números finais ainda. Enfatize o foco territorial do estudo.
- Deixe claro o recorte temporal: 2014 a 2024 (132 meses).

---

### 1:15 – 2:30 | Bloco 2: Dados, Integridade e Decisões Metodológicas
**Slide na Tela:** Slide 2 — Fontes, Validação Criptográfica e Painel dos 82 Municípios.

**Fala Sugerida:**
> *"Antes de examinar as trajetórias, destacamos três decisões metodológicas fundamentais:  
> Primeira: as duas categorias utilizam bases demográficas distintas. O roubo de rua é calculado por 100 mil habitantes, enquanto o roubo de veículos é medido por 100 mil veículos registrados na frota. Por essa razão, não comparamos níveis absolutos entre as duas modalidades, mas sim suas tendências temporais.  
> Segunda: na auditoria dos dados mensais, identificamos que dez municípios fluminenses apresentavam exatamente zero ocorrências registradas ao longo de 40 meses consecutivos no início da série (de janeiro de 2014 a abril de 2017). Como não é possível distinguir ausência real de ocorrências de falta de registro policial local, excluímos esses dez casos para construir um painel balanceado de 82 municípios, evitando distorções no cálculo das variações.  
> Terceira: calculamos a taxa anual de cada município pela média de suas 12 taxas mensais, e a média do estado como a média não ponderada entre os municípios. Dessa forma, cada município tem peso unitário, descrevendo o comportamento do município fluminense típico sem que a Capital domine unilateralmente o indicador."*

**Notas para a Apresentação:**
- Mencione que o roubo de celular já integra oficialmente o indicador de roubo de rua do ISP, não havendo dupla contagem.
- Todos os arquivos brutos têm integridade verificada por SHA-256 via `data/fontes.json`.

---

### 2:30 – 3:45 | Bloco 3: Pergunta 1 — Trajetória Agregada (H1)
**Slide na Tela:** Slide 3 — `figuras/01_trajetorias.png` (Evolução temporal das taxas médias municipais, 2014–2024).

**Fala Sugerida:**
> *"Ao examinar a primeira pergunta — a evolução das taxas médias municipais —, constatamos uma redução substancial entre os extremos do período.  
> Entre 2014 e 2024, a taxa média de roubo de rua recuou 56,0%, passando de 13,99 para 6,15 ocorrências por 100 mil habitantes ao mês. O roubo de veículos caiu 57,7%, passando de 20,78 para 8,80 por 100 mil veículos.  
> No entanto, essa trajetória esteve longe de ser linear. Entre 2014 e 2017, o estado registrou forte escalada das taxas: o roubo de rua atingiu seu pico em 2016, com 20,89; o roubo de veículos alcançou o ápice em 2017, com 28,07.  
> A redução sustentada tem início a partir de 2018 e se aprofunda em 2020, mantendo-se em patamares baixos até 2024.  
> Portanto, a Hipótese 1 é confirmada: a média municipal em 2024 é substancialmente menor que em 2014. Resta verificar se essa redução se repetiu no território."*

---

### 3:45 – 5:15 | Bloco 4: Perguntas 2 e 3 — Disparidade Regional e Municipal (H2)
**Slide na Tela:** Slides 4 e 5 — `figuras/02_regioes.png` e `figuras/03_mudancas_municipais.png`.

**Fala Sugerida:**
> *"Ao desagregar os dados em quatro macrorregiões — Capital, Baixada Fluminense, Grande Niterói e Interior —, a hipótese de homogeneidade é prontamente descartada.  
> No roubo de veículos, enquanto a Baixada Fluminense caiu 45,7% (de 72,30 para 39,24) e a Grande Niterói recuou 76,5% (de 66,44 para 15,62), a Capital do Rio de Janeiro fechou 2024 com taxa de 41,96 roubos por 100 mil veículos — um aumento de 3,1% frente aos 40,71 de 2014.  
> A Capital chegou a registrar forte queda após o pico de 2017 (quando atingiu 71,12), chegando a uma mínima de 30,60 em 2023, mas teve um repique de 37,1% em 2024, voltando ao patamar do início da década.  
> Quando descemos ao nível municipal, 65 dos 82 municípios registraram queda em ambas as categorias. Porém, 12 municípios apresentaram aumento em roubo de rua e 7 em roubo de veículo.  
> O caso mais expressivo de aumento é Belford Roxo, onde a taxa de roubo de veículos subiu 17,45 pontos (de 95,78 em 2014 para 113,22 em 2024, tendo atingido um pico de 206,55 em 2018). Em contraste, municípios metropolitanos como Nilópolis (na Baixada) e São Gonçalo (na Grande Niterói) obtiveram reduções superiores a 90 pontos.  
> A Hipótese 2, portanto, se confirma com clareza: a mudança foi territorialmente desigual."*

**Apoio para Perguntas:**
- Se perguntarem sobre São Gonçalo: esclarecer que pertence à Grande Niterói e não faz limite com Belford Roxo; são dinâmicas metropolitanas distintas.
- Se perguntarem sobre a Capital: explicar que a taxa de veículos na Capital caiu até 2023, mas o salto de 2024 fez com que a variação decenal líquida ficasse positiva (+3,1%).

---

### 5:15 – 6:30 | Bloco 5: Perguntas 4 e 5 — Dispersão Intermunicipal e Roubos de Celular
**Slide na Tela:** Slides 6 e 7 — `figuras/04_dispersao.png`, `figuras/05_composicao.png` e `figuras/07_decomposicao_rua.png`.

**Fala Sugerida:**
> *"Na Pergunta 4, analisamos a dispersão entre municípios. O intervalo interdecil (P90 menos P10) caiu mais de 50% em ambas as séries: de 41,12 para 18,43 em rua, e de 58,84 para 20,43 em veículos. Como o percentil 10 é zero na maioria dos anos, o P90-P10 reflete diretamente o recuo do percentil 90.  
> Contudo, ao avaliar a dispersão relativa pelo Coeficiente de Variação, observamos o oposto: o CV subiu de 1,65 para 1,86 em rua (+12,8%) e de 1,61 para 2,27 em veículos (+41,1%). Isso significa que a desigualdade relativa entre municípios aumentou, pois a média recuou mais rapidamente do que a variabilidade entre cidades.  
> Na Pergunta 5, examinamos a composição dos roubos de rua. Em 2014, o roubo de celular representava 8,1% do total registrado; em 2024, alcançou 36,6% — avanço de 28,5 pontos percentuais.  
> Decompondo as contagens absolutas do painel, os roubos a transeunte caíram 61,6% (de 80.461 para 30.868) e os roubos em coletivo caíram 14,8% (de 7.314 para 6.235). Na direção contrária, os registros de roubo de celular saltaram 176,0%, passando de 7.758 para 21.416 ocorrências anuais.  
> Duas hipóteses ajudam a compreender esse padrão: a crescente oportunidade econômica representada pelos smartphones e eventuais alterações nas rotinas de classificação e preenchimento de boletins nas delegacias ao longo da década. Ressaltamos que o PIX, lançado no final de 2020, não explica a maior parte desse avanço, que ocorreu entre 2014 e 2019."*

---

### 6:30 – 7:45 | Bloco 6: Pergunta 6 — Sazonalidade e Teste de Friedman (H3)
**Slide na Tela:** Slides 8 e 9 — `figuras/06_perfil_mensal.png` e `figuras/08_sazonalidade_heatmap.png`.

**Fala Sugerida:**
> *"Na sexta pergunta, avaliamos a existência de padrões sazonais. Para controlar a duração variável dos meses, normalizamos as taxas pelo número de dias e geramos um índice padronizado em 100 para a média de cada ano e município.  
> Como as observações mensais ao longo dos anos formam medidas pareadas por blocos anuais, aplicamos o teste não-paramétrico de Friedman em blocos.  
> No roubo de veículos, a sazonalidade é estatisticamente consistente: a estatística Q foi de 35,74 (p = 0,00019) no período completo e de 33,26 (p = 0,00049) excluindo o ano atípico de 2020. O padrão mostra pico regular no início do ano (janeiro, índice ~118) e vale no inverno (julho, índice ~89).  
> Já no roubo de rua, o resultado é mais ruidoso. O teste de Friedman no período total indica significância (Q = 21,78, p = 0,0261), mas, ao remover o ano de 2020, o p-valor sobe para 0,0818, perdendo significância ao nível de 5%.  
> Além disso, o pico aparente de fevereiro na média estadual é impulsionado pelo Interior. Na Região Metropolitana, a curva mensal de roubo de rua é praticamente plana, oscilando entre 100 e 104. Em termos anuais, agosto foi o mês de maior taxa em 3 dos 11 anos, enquanto fevereiro foi pico em apenas 2 anos.  
> Concluímos que a Hipótese 3 é confirmada com robustez para veículos, mas deve ser qualificada como fraca e heterogênea para roubos de rua."*

---

### 7:45 – 8:45 | Bloco 7: Análise de Sensibilidade (82 vs 92 Municípios)
**Slide na Tela:** Slide 10 — Tabela de Sensibilidade (82 vs 92 Municípios, 2018–2024).

**Fala Sugerida:**
> *"Para checar se a exclusão dos dez municípios com registros iniciais zerados introduziu viés de seleção, realizamos uma análise de sensibilidade no período de 2018 a 2024, quando todos os 92 municípios fluminenses possuíam dados ininterruptos.  
> Os resultados mostram equivalência entre as duas bases: no painel de 82 municípios, o roubo de rua caiu 69,6% e o de veículos recuou 64,3%; no conjunto completo de 92 municípios, as quedas foram de 69,7% e 64,5%, respectivamente.  
> Isso confirma que o recorte do painel protegeu a integridade analítica do início da série sem comprometer as conclusões agregadas sobre a segurança pública no estado."*

---

### 8:45 – 10:00 | Bloco 8: Conclusões, Limites e Fechamento
**Slide na Tela:** Slide 11 — Síntese das Hipóteses, Limitações e Encerramento.

**Fala Sugerida:**
> *"Em síntese, respondemos às três hipóteses do projeto:  
> 1. A média municipal de roubos caiu mais de 55% entre 2014 e 2024, após picos em 2016 e 2017.  
> 2. A mudança foi territorialmente desigual: a Capital fechou a década com alta em roubo de veículos (+3,1%), e Belford Roxo teve aumento substancial (+17,45 pontos), contrastando com quedas acentuadas em municípios vizinhos.  
> 3. A sazonalidade é estatisticamente consistente para roubo de veículos, mas ruidosa e dependente do Interior para roubo de rua. Paralelamente, o roubo de rua mudou de perfil: o celular passou de 8,1% para 36,6% das ocorrências.  
>  
> Como limitações, lembramos que os dados refletem registros formais em delegacias, sujeitos a subnotificação e incentivos de queixa. Trata-se de uma análise descritiva e exploratória, sem atribuição de causalidade a políticas específicas.  
> Todo o material — notebook executado, dados com verificação de hash e apresentações — está disponível no repositório.  
> Obrigado, e ficamos abertos às considerações do professor e dos colegas."*

---

## Guia de Respostas para Perguntas

1. **Pergunta:** *"Por que usar média simples das taxas municipais em vez da taxa estadual agregada?"*  
   **Resposta:** *"O foco da nossa pergunta é a distribuição territorial entre os municípios. Se somássemos todas as ocorrências e dividíssemos pela população estadual, a Capital e São Gonçalo responderiam por mais de metade do indicador, ocultando a dinâmica dos demais 80 municípios. Com peso unitário por município, retratamos a experiência do município fluminense típico."*

2. **Pergunta:** *"Por que utilizar o teste de Friedman em vez de Kruskal-Wallis para a sazonalidade?"*  
   **Resposta:** *"Porque as observações mensais ao longo dos anos formam medidas pareadas organizadas em blocos temporais (anos). O teste de Kruskal-Wallis assume amostras independentes e ignora essa estrutura. O teste de Friedman trata os 12 meses como tratamentos pareados ao longo dos 11 anos, avaliando se a classificação ordinal dos meses se repete de maneira consistente de ano para ano."*

3. **Pergunta:** *"O aumento do roubo de celular não decorre do PIX ou de exigência de seguradoras?"*  
   **Resposta:** *"O PIX foi lançado no final de 2020, enquanto a maior parte do salto de celular ocorreu entre 2014 e 2019 (de 7,7 mil para 18,9 mil registros), de modo que o sistema de pagamentos não pode ser o vetor principal. Por outro lado, a maior presença de smartphones, o valor dos aparelhos e possíveis refinamentos no preenchimento de boletins nas delegacias são fatores explicativos plausíveis."*

4. **Pergunta:** *"A disparidade intermunicipal realmente diminuiu se o P90-P10 caiu?"*  
   **Resposta:** *"Em termos absolutos, sim: a distância entre o percentil 90 e o percentil 10 recuou mais de 50%. Contudo, em termos relativos, o Coeficiente de Variação aumentou tanto em rua (+12,8%) quanto em veículos (+41,1%). Isso significa que, proporcionalmente à nova média, a heterogeneidade entre os municípios fluminenses se tornou maior em 2024 do que era em 2014."*
