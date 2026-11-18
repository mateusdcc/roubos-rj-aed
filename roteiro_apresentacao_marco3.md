# Roteiro da Apresentação Final — Marco 3 (10 minutos)
**Disciplina:** Análise Exploratória de Dados e Visualização — FGV EMAp (2026.2)  
**Professor:** João Rulff  
**Título do Projeto:** Roubos no Rio de Janeiro: uma mudança igual para todos?  
**Integrantes (Marco 3):** Pedro Braga e Felipe  
*(Projeto desenvolvido conjuntamente com Mateus Cavalcanti nos Marcos 1 e 2; finalizado e revisado por Pedro Braga e Felipe no Marco 3)*  
**Base do Projeto:** `marco3.ipynb` e `marco3.html`  

---

## Estrutura Temporal dos 10 Minutos

| Bloco | Tempo | Tema | Visualização / Slide |
|---|---|---|---|
| 1 | 0:00 – 1:15 | Abertura, Contexto e Hipóteses de Pesquisa | Slide 1: Título e Hipóteses |
| 2 | 1:15 – 2:30 | Dados, Auditoria e Cautelas Metodológicas | Slide 2: Fontes e Painel dos 82 Municípios |
| 3 | 2:30 – 3:45 | Trajetória Agregada e Hipótese 1 | Slide 3: `figuras/01_trajetorias.png` |
| 4 | 3:45 – 5:15 | Disparidade Regional e Municipal (H2) | Slides 4 e 5: `02_regioes.png` e `03_mudancas_municipais.png` |
| 5 | 5:15 – 6:30 | Dispersão (P90-P10 e CV) e Roubos de Celular | Slides 6 e 7: `04_dispersao.png`, `05_composicao.png` e `07_decomposicao_rua.png` |
| 6 | 6:30 – 7:45 | Sazonalidade, Friedman e Perfis Regionais (H3) | Slides 8 e 9: `06_perfil_mensal.png`, `08_sazonalidade_heatmap.png` e `09_sazonalidade_regional.png` |
| 7 | 7:45 – 8:45 | Análise de Sensibilidade (82 vs. 92 Municípios) | Slide 10: Comparação de 82 vs. 92 Municípios |
| 8 | 8:45 – 10:00 | Conclusões Finais, Limitações e Fechamento | Slide 11: Síntese, Limites e Q&A |

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

---

### 1:15 – 2:30 | Bloco 2: Dados, Integridade e Decisões Metodológicas
**Slide na Tela:** Slide 2 — Fontes, Validação Criptográfica e Painel dos 82 Municípios.

**Fala Sugerida:**
> *"Antes de examinar as trajetórias, destacamos três decisões metodológicas fundamentais:  
> Primeira: as duas categorias utilizam bases demográficas distintas. O roubo de rua é calculado por 100 mil habitantes, enquanto o roubo de veículos é medido por 100 mil veículos registrados na frota. Por essa razão, não comparamos níveis absolutos entre as duas modalidades, mas sim suas tendências temporais.  
> Segunda: na auditoria dos dados mensais, identificamos que dez municípios fluminenses apresentavam exatamente zero ocorrências registradas ao longo de 40 meses consecutivos no início da série (de janeiro de 2014 a abril de 2017). Como não é possível distinguir ausência real de ocorrências de falta de registro policial local, excluímos esses dez casos para construir um painel balanceado de 82 municípios, evitando distorções no cálculo das variações.  
> Terceira: calculamos a taxa anual de cada município pela média de suas 12 taxas mensais, e a média do estado como a média não ponderada entre os municípios. Dessa forma, cada município tem peso unitário, descrevendo o comportamento do município fluminense típico sem que a Capital domine unilateralmente o indicador."*

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
> Ao examinar a série completa da Capital, nota-se que 2014 foi o menor nível pré-pandemia (5º menor dos 11 anos); a taxa veicular atingiu pico de 71,12 em 2017, recuou até 30,60 em 2023 e deu um repique de 37,1% em 2024.  
> Quando descemos ao nível municipal, 56 dos 82 municípios registraram queda simultânea em ambas as categorias (65 em rua e 65 em veículos). Porém, 12 municípios apresentaram aumento em rua e 7 em veículos.  
> O caso mais expressivo de aumento é Belford Roxo, onde a taxa de roubo de veículos subiu 17,45 pontos (de 95,78 em 2014 para 113,22 em 2024, tendo atingido pico histórico de 206,55 em 2018). Em contraste, municípios metropolitanos como Nilópolis (na Baixada) e São Gonçalo (na Grande Niterói) obtiveram reduções superiores a 90 pontos. Já os aumentos em rua ocorreram em municípios pequenos, como Três Rios (+1,34), Cardoso Moreira (+1,30) e Pinheiral (+0,91), onde poucas ocorrências nominais afetam muito a taxa.  
> A Hipótese 2, portanto, se confirma com clareza: a mudança foi territorialmente desigual."*

---

### 5:15 – 6:30 | Bloco 5: Perguntas 4 e 5 — Dispersão Intermunicipal e Roubos de Celular
**Slide na Tela:** Slides 6 e 7 — `figuras/04_dispersao.png`, `figuras/05_composicao.png` e `figuras/07_decomposicao_rua.png`.

**Fala Sugerida:**
> *"Na Pergunta 4, analisamos a dispersão entre municípios. O intervalo interdecil (P90 menos P10) caiu mais de 50% em ambas as séries: de 41,12 para 18,43 em rua, e de 58,84 para 20,43 em veículos. Como o percentil 10 é zero na maioria dos anos, o P90-P10 reflete diretamente o recuo do percentil 90.  
> Contudo, ao avaliar a dispersão relativa pelo Coeficiente de Variação, observamos o oposto: o CV subiu de 1,65 para 1,86 em rua (+12,8%) e de 1,61 para 2,27 em veículos (+41,1%). Isso significa que a desigualdade relativa entre municípios aumentou, pois a média recuou mais rapidamente do que a variabilidade entre cidades.  
> Na Pergunta 5, examinamos a composição dos roubos de rua. Em 2014, o roubo de celular representava 8,1% do total registrado; em 2024, alcançou 36,6% — avanço de 28,5 pontos percentuais.  
> Decompondo as contagens absolutas do painel, os roubos a transeunte caíram 61,6% (de 80.461 para 30.868) e os roubos em coletivo caíram 14,8% (de 7.314 para 6.235). Na direção contrária, os registros de roubo de celular saltaram 176,1%, passando de 7.758 para 21.416 ocorrências anuais, tendo atingido um pico de 26.779 em 2019.  
> Duas hipóteses explicam esse padrão: a oportunidade econômica dos smartphones como alvos atrativos e portáteis, conforme a teoria das atividades rotineiras de Cohen e Felson (1979), e eventuais alterações nas rotinas de classificação e preenchimento de boletins nas delegacias. Ressaltamos que o PIX, lançado no final de 2020, não explica a maior parte desse avanço, que ocorreu entre 2014 e 2019."*

---

### 6:30 – 7:45 | Bloco 6: Pergunta 6 — Sazonalidade, Teste de Friedman e Desagregação Regional (H3)
**Slide na Tela:** Slides 8 e 9 — `figuras/06_perfil_mensal.png`, `figuras/08_sazonalidade_heatmap.png` e `figuras/09_sazonalidade_regional.png`.

**Fala Sugerida:**
> *"Na sexta pergunta, avaliamos a existência de padrões sazonais. Para controlar a duração variável dos meses, normalizamos as taxas pelo número de dias e geramos um índice padronizado em 100 para a média de cada ano e município.  
> Como as observações mensais ao longo dos anos formam medidas pareadas por blocos anuais, aplicamos o teste não-paramétrico de Friedman em blocos.  
> No período completo de 11 anos, o teste rejeita a hipótese nula em ambas as modalidades: Q = 35,74 (p = 0,00019) em veículos e Q = 21,78 (p = 0,0261) em rua. Removendo o ano atípico de 2020, a significância se mantém: Q = 30,05 (p = 0,00156) em veículos e Q = 20,58 (p = 0,0379) em rua.  
> Porém, a desagregação regional que trouxemos no gráfico 09 revela um achado fundamental:  
> No roubo de veículos, a sazonalidade é consistente e compartilhada por todo o estado, com pico regular em janeiro (~118 na Metropolitana e ~125 no Interior) e vale no inverno.  
> Já no roubo de rua, o pico aparente de fevereiro na média estadual (115,5) é puxado exclusivamente pelo Interior (119,7), refletindo o afluxo de turistas e o Carnaval. Na Região Metropolitana, onde está a imensa maioria dos casos, o perfil mensal é praticamente plano, oscilando estreitamente entre 92,9 (dezembro) e 104,2 (outubro). Ano a ano, agosto foi o mês mais alto em 3 anos, e fevereiro em apenas 2 anos.  
> A Hipótese 3 é, portanto, confirmada com robustez para veículos, mas qualificada como heterogênea e dominada pelo Interior em rua."*

---

### 7:45 – 8:45 | Bloco 7: Análise de Sensibilidade (82 vs. 92 Municípios)
**Slide na Tela:** Slide 10 — Tabela de Sensibilidade (82 vs. 92 Municípios, 2018–2024).

**Fala Sugerida:**
> *"Para checar se a exclusão dos dez municípios com registros iniciais zerados introduziu viés de seleção, realizamos uma análise de sensibilidade no período de 2018 a 2024, quando todos os 92 municípios fluminenses possuíam dados ininterruptos.  
> Os resultados mostram equivalência entre as duas bases: no painel de 82 municípios, o roubo de rua caiu 69,6% e o de veículos recuou 64,3%; no conjunto completo de 92 municípios, as quedas foram de 69,7% e 64,5%, respectivamente.  
> Isso confirma que o recorte do painel protegeu a integridade analítica do início da série sem comprometer as conclusões agregadas sobre a segurança pública no estado."*

---

### 8:45 – 10:00 | Bloco 8: Conclusões, Limitações e Fechamento
**Slide na Tela:** Slide 11 — Síntese das Hipóteses, Limitações e Encerramento.

**Fala Sugerida:**
> *"Em síntese, respondemos às três hipóteses do projeto:  
> 1. A média municipal de roubos caiu mais de 55% entre 2014 e 2024, após picos em 2016 e 2017.  
> 2. A mudança foi territorialmente desigual: a Capital fechou a década com alta em roubo de veículos (+3,1%), e Belford Roxo teve aumento substancial (+17,45 pontos), contrastando com quedas acentuadas em municípios vizinhos. Ao todo, 56 cidades tiveram queda simultânea em ambas as categorias.  
> 3. A sazonalidade é estatisticamente consistente para roubo de veículos, mas ruidosa e dependente do Interior para roubo de rua. Paralelamente, o roubo de rua mudou de perfil: o celular passou de 8,1% para 36,6% das ocorrências (+176,1%).  
>  
> Como limitações metodológicas, lembramos que os dados refletem registros formais em delegacias, sujeitos a subnotificação e incentivos de queixa. As médias com peso unitário retratam o município típico, e nossa análise é estritamente descritiva e exploratória, sem imputação de causalidade a políticas de segurança.  
> Todo o material — notebook executado, dados com verificação de hash e apresentações — está disponível no repositório.  
> Obrigado, e ficamos abertos às considerações do professor e dos colegas."*

---

## Guia de Respostas para Perguntas

1. **Pergunta:** *"Por que usar média simples das taxas municipais em vez da taxa estadual agregada?"*  
   **Resposta:** *"O foco da nossa pergunta é a distribuição territorial entre os municípios ('uma mudança igual para todos?'). Se somássemos todas as ocorrências e dividíssemos pela população estadual, a Capital e São Gonçalo responderiam por mais de metade do indicador, ocultando a dinâmica dos demais 80 municípios. Com peso unitário por município, retratamos a experiência do município fluminense típico."*

2. **Pergunta:** *"Por que utilizar o teste de Friedman em vez de Kruskal-Wallis para a sazonalidade?"*  
   **Resposta:** *"Porque as observações mensais ao longo dos anos formam medidas pareadas organizadas em blocos temporais (anos), compartilhando o mesmo nível médio anual (índice 100). O teste de Kruskal-Wallis assume amostras independentes e ignora essa estrutura. O teste de Friedman trata os 12 meses como tratamentos pareados ao longo dos 11 anos, avaliando se a classificação ordinal dos meses se repete de maneira consistente de ano para ano sem exigir normalidade."*

3. **Pergunta:** *"O teste de Friedman perde significância sem 2020?"*  
   **Resposta:** *"Não. Calculando rigorosamente com scipy.stats.friedmanchisquare, o teste continua significante a 5% em ambas as categorias mesmo excluindo 2020: Q = 20,58 (p = 0,0379) para roubo de rua e Q = 30,05 (p = 0,00156) para veículos. A razão pela qual qualificamos a sazonalidade de roubo de rua como frágil não é o p-valor, mas a desagregação regional: na Região Metropolitana a curva mensal é praticamente plana (92,9 a 104,2) e o pico de fevereiro é um artefato do Interior (119,7). Além disso, ano a ano, agosto foi o pico em 3 anos e fevereiro em apenas 2 anos."*

4. **Pergunta:** *"O aumento do roubo de celular decorre do PIX?"*  
   **Resposta:** *"O PIX foi lançado no final de 2020, enquanto a maior parte do salto de celular ocorreu entre 2014 e 2019 (de 7.758 para 26.779 registros anuais no painel), de modo que o sistema de pagamentos instantâneos não explica o movimento principal. Esse avanço é melhor compreendido pela crescente ubiquidade e valor econômico dos smartphones (teoria das atividades rotineiras de Cohen & Felson, 1979) e pelo aprimoramento na tipificação policial nos boletins de ocorrência."*

5. **Pergunta:** *"A disparidade intermunicipal realmente diminuiu se o P90-P10 caiu?"*  
   **Resposta:** *"Em termos absolutos, sim: a distância entre o percentil 90 e o percentil 10 recuou mais de 50%. Contudo, em termos relativos, o Coeficiente de Variação aumentou tanto em rua (+12,8%) quanto em veículos (+41,1%). Isso significa que, proporcionalmente à nova média, a heterogeneidade entre os municípios fluminenses se tornou maior em 2024 do que era em 2014."*

6. **Pergunta:** *"Qual foi a divisão de trabalho da equipe e por que o repositório é de Mateus Cavalcanti?"*  
   **Resposta:** *"O projeto foi iniciado e desenvolvido conjuntamente pelo trio Mateus Cavalcanti, Pedro Braga e Felipe nos Marcos 1 e 2. Mateus foi responsável pela infraestrutura inicial do ambiente reprodutível em Nix e pela governança de integridade por SHA-256. No início do Marco 3, Mateus desligou-se da disciplina. A dupla Pedro Braga e Felipe assumiu a condução, revisão metodológica, cálculos do teste de Friedman, análise de dispersão relativa, decomposição estrutural e finalização completa do Marco 3, mantendo o histórico e os créditos pelo trabalho realizado nos marcos anteriores."*
