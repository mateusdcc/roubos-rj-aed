# Roteiro de Apresentação Oral — Marco 3 (Final)

**Disciplina:** Análise Exploratória de Dados e Visualização (2026.2) — FGV EMAp  
**Docente:** Prof. João Rulff  
**Equipe:** Pedro Braga e Felipe (com colaboração de Mateus Cavalcanti nos Marcos 1 e 2)  
**Tema:** *Roubos no Rio de Janeiro: uma mudança igual para todos?*  
**Tempo limite estrito:** 10 minutos (600 segundos)  
**Meta de ritmo oral:** ~120 palavras por minuto (~1.200 palavras de texto de fala).

---

## 1. Tabela Unificada de Tempos

| Slide | Conteúdo | Intervalo | Duração | Alvo de Fala |
| :---: | :--- | :---: | :---: | :---: |
| **1** | Capa, Contexto e Hipóteses | 0:00 – 1:15 | 1m 15s | ~150 palavras |
| **2** | Dados, Auditoria e Painel de 82 Municípios | 1:15 – 2:30 | 1m 15s | ~150 palavras |
| **3** | Pergunta 1: Trajetórias das Médias Estaduais (H1) | 2:30 – 3:30 | 1m 00s | ~120 palavras |
| **4** | Pergunta 2: Trajetórias Regionais das Taxas (H2) | 3:30 – 4:30 | 1m 00s | ~120 palavras |
| **5** | Pergunta 3: Diferenças Municipais e Mapa Coroplético (H2) | 4:30 – 5:30 | 1m 00s | ~120 palavras |
| **6** | Pergunta 4: Dispersão e Desigualdade Relativa (CV e Gini) | 5:30 – 6:30 | 1m 00s | ~120 palavras |
| **7** | Pergunta 5: Decomposição dos Roubos de Rua | 6:30 – 7:30 | 1m 00s | ~120 palavras |
| **8** | Pergunta 6: Perfis Mensais Normalizados (H3) | 7:30 – 8:15 | 0m 45s | ~90 palavras |
| **9** | Pergunta 6: Validação por Friedman e Efeito Regional (H3) | 8:15 – 9:00 | 0m 45s | ~90 palavras |
| **10** | Sensibilidade Metodológica: 82 vs. 92 Municípios | 9:00 – 9:30 | 0m 30s | ~60 palavras |
| **11** | Síntese das Hipóteses, Limitações e Encerramento | 9:30 – 10:00 | 0m 30s | ~60 palavras |
| **Total** | **Apresentação Oral Completa** | **0:00 – 10:00** | **10m 00s** | **~1.200 palavras** |

---

## 2. Texto da Fala Slide a Slide

### Slide 1: Capa, Contexto e Hipóteses (0:00 – 1:15 | 148 palavras)
> "Bom dia, professor João Rulff e colegas. Nosso trabalho investiga a dinâmica dos crimes patrimoniais no Estado do Rio de Janeiro entre 2014 e 2024, respondendo à pergunta central: a mudança observada na segurança pública foi igual para todos?
> 
> As estatísticas agregadas frequentemente divulgam quedas expressivas nos crimes. No entanto, números globais podem ocultar disparidades espaciais severas. Para estruturar nossa análise exploratória, formulamos três hipóteses orientadoras:
> 
> A primeira hipótese prevê que as taxas municipais médias de 2024 são menores do que as de 2014 em ambas as categorias analisadas: roubo de rua e roubo de veículo.
> 
> A segunda hipótese sustenta que essa redução não ocorreu de forma homogênea, revelando trajetórias divergentes entre macrorregiões e municípios.
> 
> A terceira hipótese propõe a existência de ciclos sazonais intra-anuais consistentes e compartilhados por todo o território fluminense.
> 
> Passamos agora às escolhas metodológicas que asseguram a reprodutibilidade dos resultados."

---

### Slide 2: Dados, Origem e Decisões Metodológicas (1:15 – 2:30 | 146 palavras)
> "Trabalhamos com dados oficiais do Instituto de Segurança Pública (ISP-RJ), cobrindo 132 meses ininterruptos, de janeiro de 2014 a dezembro de 2024. Auditamos a integridade de todas as bases por hashes SHA-256 no notebook.
> 
> Uma decisão metodológica central foi a diferenciação dos denominadores: roubo de rua é mensurado por 100 mil habitantes, utilizando projeções populacionais do IBGE/TCU; roubo de veículos é calculado por 100 mil veículos, utilizando a frota do Senatran. Tratando-se de grandezas distintas, comparamos trajetórias temporais e variações relativas, nunca níveis absolutos entre crimes.
> 
> Além disso, excluímos dez municípios que apresentavam registro de ocorrências zerado entre 2014 e 2017, período de implantação de delegacias locais. Construímos assim um painel balanceado de 82 municípios e 10.824 observações, representando mais de 98% da população fluminense. Essa exclusão técnica evitou aumentos artificiais causados pelo simples início das notificações policiais."

---

### Slide 3: Pergunta 1: Trajetórias das Médias Estaduais (2:30 – 3:30 | 122 palavras)
> "Na primeira pergunta, examinamos a evolução da média municipal sem ponderação populacional, representando a experiência do município típico fluminense.
> 
> Entre as duas pontas da década, a taxa média de roubo de rua recuou de 13,99 para 6,15 por 100 mil habitantes, uma queda líquida de 56,0%. Já o roubo de veículos caiu de 20,78 para 8,80 por 100 mil veículos, retração de 57,7%.
> 
> Contudo, a trajetória não foi monótona: o estado enfrentou uma onda de expansão criminal durante a crise fiscal, com picos em 2016 para rua e 2017 para veículos, antes de consolidar a redução pós-2020.
> 
> Suavizando a comparação por triênios, a queda é de 56,5% em rua e 59,7% em veículos, corroborando a Hipótese 1."

---

### Slide 4: Pergunta 2: Trajetórias Regionais das Taxas (3:30 – 4:30 | 125 palavras)
> "Ao desagregar por macrorregiões segundo a classificação administrativa do ISP, a Hipótese 2 ganha evidência imediata.
> 
> Em roubo de veículos, a Baixada Fluminense despencou 65,2%, Grande Niterói recuou 60,1% e o Interior caiu 76,6%. Em contrapartida, a Capital encerrou 2024 com taxa de 41,96, patamar ligeiramente superior ao de 2014, marcando saldo positivo de 3,1%.
> 
> Essa elevação pontual não reflete uma tendência decenal de alta, mas sim um repique vigoroso de 37,1% ocorrido apenas entre 2023 e 2024. Quando comparamos médias trienais para amortecer volatilidades anuais, a Capital apresenta redução de 22,1%.
> 
> Em roubo de rua, a Baixada manteve em 2024 a maior taxa média do estado, com 23,18 por 100 mil habitantes."

---

### Slide 5: Pergunta 3: Alterações Municipais e Mapa Coroplético (4:30 – 5:30 | 126 palavras)
> "Na escala municipal, 65 das 82 cidades reduziram roubo de rua e outras 65 reduziram roubo de veículos no ponto a ponto, com 56 quedas simultâneas. Por triênios, as quedas atingem 78 municípios em rua e 69 em veículos.
> 
> O mapa coroplético da Figura 10 exibe a predominância azul de reduções pelo território. No entanto, as disparidades intrametropolitanas são agudas.
> 
> Belford Roxo destaca-se como principal exceção: a taxa de veículos subiu 17,45 pontos no ponto a ponto e 5,41 pontos no triênio, atingindo 113,22 em 2024. Já municípios vizinhos obtiveram alívios históricos expressivos, como Nilópolis na Baixada, com recuo de quase 94 pontos, e São Gonçalo, com queda de 75 pontos."

---

### Slide 6: Pergunta 4: Dispersão e Desigualdade Relativa (5:30 – 6:30 | 124 palavras)
> "A quarta pergunta revela um dos paradoxos analíticos mais importantes do trabalho: a distância absoluta diminuiu, mas a desigualdade relativa aumentou.
> 
> A distância interdecil P90 menos P10 encolheu 55,2% em rua e 65,3% em veículos. Porém, como o décimo percentil é frequentemente nulo, esse estreitamento reflete apenas o rebaixamento do teto da distribuição.
> 
> Ao examinar o Coeficiente de Variação, a dispersão relativa subiu 28,8% em rua e 71,5% em veículos. No núcleo metropolitano do ISP, o CV de veículos avançou de 0,63 para 0,91.
> 
> O índice de Gini subiu de 0,72 para 0,75 em rua e de 0,70 para 0,80 em veículos. Hoje, apenas 8 municípios concentram quase 70% dos roubos de veículos."

---

### Slide 7: Pergunta 5: Celular nos Roubos de Rua (6:30 – 7:30 | 128 palavras)
> "Na quinta pergunta, analisamos a recomposição interna dos roubos de rua. A fatia de roubo de celular saltou de 8,1% em 2014 para 36,6% em 2024, avanço de 28,5 pontos percentuais. Em volume absoluto, subiu de 7.758 para 21.416 ocorrências anuais.
> 
> Em sentido oposto, roubo a transeunte caiu 61,6% e roubo em coletivo recuou 14,8%.
> 
> Interpretamos essa transformação sob duas hipóteses concorrentes:
> 
> Primeiro, a teoria da oportunidade: smartphones tornaram-se bens portáteis de altíssima liquidez. O PIX em novembro de 2020 acelerou a atratividade, embora as contagens brutas já crescessem intensamente desde 2014, atingindo pico histórico em 2018.
> 
> Segundo, hipótese cartorária: o aprimoramento dos boletins de ocorrência nas delegacias, tipificando especificamente a subtração do celular em vez de enquadrá-la como transeunte genérico."

---

### Slide 8: Pergunta 6: Perfis Mensais e Normalização (7:30 – 8:15 | 92 palavras)
> "Para investigar a sazonalidade, dividimos as taxas pelos dias efetivos de cada mês e indexamos a média anual local em 100.
> 
> Em roubo de veículos, identificamos um ciclo consistente em todo o estado: pico recorrente no verão, com janeiro alcançando 123,9 no painel e 118,2 na área metropolitana, contra vales profundos no inverno, atingindo mínima em julho de 88,6 na metrópole.
> 
> Já em roubo de rua, a média estadual indica aparente ápice em fevereiro, mas na área metropolitana o perfil é plano, variando suavemente entre 94,6 e 103,9."

---

### Slide 9: Pergunta 6: Validação por Friedman e Efeito Regional (8:15 – 9:00 | 95 palavras)
> "Submetemos os índices ao teste não paramétrico de Friedman em blocos. No painel geral, a hipótese nula de igualdade mensal foi rejeitada em ambos os crimes.
> 
> Porém, a desagregação regional e o coeficiente W de Kendall desfazem a ilusão: no núcleo metropolitano do ISP, roubo de rua não apresenta significância estatística (Q = 11,71, p = 0,386 e W = 0,10). O pico de fevereiro decorre do Interior (122,4), formulando-se a hipótese de impacto do veraneio e Carnaval.
> 
> Ao testar contagens estaduais brutas, a sazonalidade de rua também desaparece (p = 0,135), provando que não afeta a massa da população."

---

### Slide 10: Sensibilidade Metodológica: 82 vs. 92 Municípios (9:00 – 9:30 | 62 palavras)
> "Para garantir que a exclusão inicial de dez municípios não enviesou a tendência temporal, recalculamos as variações no intervalo em que todo o estado possuía dados válidos, de 2018 a 2024.
> 
> Nos 82 municípios, a queda foi de 69,6% em rua e 64,3% em veículos. Nos 92 municípios, foi de 69,7% e 64,5%. A diferença é inferior a 0,2 ponto percentual, atestando a solidez da amostra."

---

### Slide 11: Síntese das Hipóteses e Considerações Finais (9:30 – 10:00 | 64 palavras)
> "Concluímos: a Hipótese 1 é corroborada pelas quedas médias superiores a 55%. A Hipótese 2 é plenamente corroborada pela heterogeneidade regional, com aumento da desigualdade relativa. A Hipótese 3 é qualificada: há forte sazonalidade em veículos, mas ausência de ciclo em roubo de rua metropolitano.
> 
> Respondendo ao nosso título: não, a mudança não foi igual para todos. Agradecemos a atenção e abrimos para perguntas."

---

## 3. Guia de Perguntas Prováveis da Banca (Q&A)

### Pergunta 1: Por que não incluíram um mapa coroplético antes, se a pergunta é eminentemente territorial?
**Resposta sugerida:**  
> "Apresentamos no Marco 3 a Figura 10 e o Slide 5, que exibem o mapa coroplético das variações municipais suavizadas por triênios (2014–16 vs. 2022–24) a partir da malha GeoJSON oficial do IBGE. O mapa evidencia visualmente a predominância territorial de reduções (tons azuis) e permite identificar com clareza as poucas exceções de elevação ou estabilidade concentradas na Baixada e em pequenas cidades do Interior."

### Pergunta 2: O Coeficiente de Variação (CV) não subiu apenas porque as taxas do Interior foram a quase zero?
**Resposta sugerida:**  
> "Não. Para controlar essa sensibilidade, recalculamos as medidas de dispersão relativa restritas ao núcleo metropolitano do ISP (Capital, Baixada e Grande Niterói): o CV de veículos saltou de 0,63 para 0,91 (+44,1%). Além disso, o índice de Gini do painel completo subiu de 0,72 para 0,75 em rua e de 0,70 para 0,80 em veículos. O aumento da concentração relativa é real e afeta tanto a metrópole quanto o interior."

### Pergunta 3: A Capital realmente registrou alta em roubo de veículos ao longo da década?
**Resposta sugerida:**  
> "Apenas na comparação pontual das extremidades (40,71 em 2014 para 41,96 em 2024, +3,1%). Esse saldo pontual foi causado pelo repique atípico de +37,1% em 2024 sobre os 30,60 de 2023. Ao utilizarmos a comparação suavizada por triênios (2014–2016 versus 2022–2024), a média da Capital cai de 46,26 para 36,03, registrando recuo de 22,1%. Não houve tendência decenal de alta, mas sim um repique de encerramento de período."

### Pergunta 4: O p-valor do teste de Friedman é baixo, mas o tamanho do efeito (magnitude) é substantivo?
**Resposta sugerida:**  
> "O coeficiente de concordância W de Kendall qualifica a magnitude: no painel estadual, W é de 0,18 em rua (fraco) e 0,30 em veículos (moderado). No núcleo metropolitano, W de rua cai para 0,10 com p = 0,386 (efeito estatisticamente nulo). Já em veículos, W permanece em 0,23 com p = 0,0035, confirmando que a sazonalidade de veículos é um fenômeno de efeito consistente, enquanto a de rua na metrópole inexiste."

### Pergunta 5: O índice sazonal estadual não é distorcido pelo peso igual dado a municípios pequenos?
**Resposta sugerida:**  
> "Sim, esse risco de falácia ecológica foi exatamente o motivo pelo qual conduzimos duas verificações complementares: o teste de Friedman desagregado por macrorregiões e o teste sobre contagens brutas agregadas estaduais (ponderação implícita pela população). Em ambas as verificações, a sazonalidade de roubo de rua desaparece estatisticamente (p = 0,386 no núcleo metropolitano e p = 0,135 nas contagens brutas), provando que o pico de fevereiro no painel é efeito restrito ao Interior turístico."

### Pergunta 6: O que explica a acentuada onda de elevação com pico em 2016 e 2017?
**Resposta sugerida:**  
> "Os picos de 2016 (roubo de rua) e 2017 (roubo de veículos) coincidem com o ápice da crise político-fiscal e financeira do Estado do Rio de Janeiro, marcada pelo decreto de calamidade pública pré-Olimpíadas, atrasos salariais crônicos nas forças de segurança, colapso de policiamento ostensivo e crise no programa das UPPs. A inflexão para a queda consolida-se após a intervenção federal na segurança pública de 2018 e aprofunda-se na pandemia de 2020."
