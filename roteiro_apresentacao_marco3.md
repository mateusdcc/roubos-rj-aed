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
| 4 | 3:45 – 5:15 | Disparidade Regional e Municipal (H2) | Slide 4 e 5: `02_regioes.png` e `03_mudancas_municipais.png` |
| 5 | 5:15 – 6:30 | Composição e a Ascensão do Celular | Slide 6 e 7: `05_composicao.png` e `07_decomposicao_rua.png` |
| 6 | 6:30 – 7:45 | Sazonalidade e Validação Estatística (H3) | Slide 8 e 9: `06_perfil_mensal.png` e `08_sazonalidade_heatmap.png` |
| 7 | 7:45 – 8:45 | Sensibilidade e Abstração dos Dados | Slide 10: Comparação de 82 vs 92 Municípios |
| 8 | 8:45 – 10:00 | Conclusões Finais, Limites e Fechamento | Slide 11: Síntese, Limites e Q&A |

---

## Minuto a Minuto: O que Projetar, Falar e Defender

### 0:00 – 1:15 | Bloco 1: Abertura e Motivação
**Slide na Tela:** Slide 1 — Título, Equipe e as Três Hipóteses de Pesquisa.

**Fala Sugerida:**
> *"Bom dia, professor João, colegas. Nosso trabalho parte de uma reflexão fundamental sobre dados de segurança pública: quando os índices agregados de roubo caem no Estado do Rio de Janeiro, será que essa melhoria beneficia todos os cidadãos e municípios de maneira uniforme?  
> Indicadores gerais frequentemente ocultam armadilhas ecológicas. Um estado pode apresentar redução estatística média ao mesmo tempo em que regiões inteiras sofrem com explosões de crimes ou em que o próprio perfil das ocorrências se transforma.  
> Para responder a essa questão, analisamos 11 anos de registros oficiais do ISP-RJ, de 2014 a 2024. Estruturamos nossa investigação em três hipóteses centrais:  
> Primeira: as taxas médias municipais de 2024 são substancialmente menores que as de 2014.  
> Segunda: essa mudança foi espacialmente desigual, com disparidades profundas entre regiões e municípios.  
> Terceira: existem padrões estacionais mensais recorrentes e estatisticamente válidos ao longo do ano.  
> Hoje apresentamos o diagnóstico final desse percurso."*

**Notas para a Apresentação:**
- Não cite ainda os números de queda. Prenda a atenção da banca no paradoxo entre o indicador agregado e a realidade territorial local.
- Estabeleça com clareza o recorte temporal: 2014 a 2024 (132 meses).

---

### 1:15 – 2:30 | Bloco 2: Dados, Integridade e Decisões Metodológicas
**Slide na Tela:** Slide 2 — Tabela de Auditoria, Verificação de Hash e Painel dos 82 Municípios.

**Fala Sugerida:**
> *"Antes de examinar os gráficos, precisamos falar sobre rigor na abstração dos dados.  
> Utilizamos as bases oficiais do Instituto de Segurança Pública (ISP-RJ). No repositório, rastreamos todas as fontes com data de acesso e validação criptográfica por SHA-256 no notebook.  
> Tomamos três decisões metodológicas cruciais:  
> Primeiro: as unidades são distintas. Roubo de rua é mensurado por 100 mil habitantes; roubo de veículos é medido por 100 mil veículos de frota registrada. Por isso, nunca comparamos o nível absoluto de uma série contra a outra, mas sim as suas trajetórias temporais.  
> Segundo: em nossa auditoria descritiva, identificamos que 10 municípios do estado apresentavam exatamente zero ocorrências policiais registradas ao longo de 40 meses consecutivos no início do período. Pelo dado bruto, não é possível saber se o crime não existia ou se não havia delegacia ativa para registrar. Para não inflar artificialmente o crime posterior, excluímos esses dez casos e construímos um painel conservador balanceado de 82 municípios.  
> Terceiro: calculamos a taxa anual como a média das 12 taxas mensais de cada município, e depois a média entre os municípios com peso unitário. Descrevemos o município fluminense típico, evitando que a Capital domine unilateralmente a métrica municipal."*

**Notas para a Apresentação:**
- Destaque que roubo de celular já integra o roubo de rua oficial; não houve dupla contagem.
- O rigor na validação criptográfica (SHA-256) demonstra maturidade de engenharia de dados.

---

### 2:30 – 3:45 | Bloco 3: Pergunta 1 — A Trajetória Agregada (H1)
**Slide na Tela:** Slide 3 — `figuras/01_trajetorias.png` (Linhas temporais de 2014 a 2024 para roubo de rua e roubo de veículo).

**Fala Sugerida:**
> *"Ao examinar a primeira pergunta — como evoluíram as taxas médias municipais —, constatamos uma redução expressiva de ponta a ponta.  
> Entre 2014 e 2024, a taxa média mensal de roubo de rua despencou 56,0%, caindo de 13,99 para 6,15 por 100 mil habitantes. Já o roubo de veículos caiu 57,6%, passando de 20,78 para 8,80 por 100 mil veículos.  
> No entanto, o caminho até essa redução esteve longe de ser contínuo ou suave. Entre 2014 e 2017, o estado atravessou uma grave escalada criminal, impulsionada pela crise fiscal fluminense e pelo período pós-olímpico. Roubo de rua atingiu seu pico histórico em 2016, com 20,89; roubo de veículos alcançou o ápice em 2017, com 28,07.  
> Apenas a partir de 2018 e, posteriormente, com as medidas de restrição de circulação em 2020, as taxas recuaram a patamares historicamente baixos.  
> Portanto, a Hipótese 1 é plenamente confirmada: a média municipal em 2024 é substancialmente menor que em 2014. Mas será que isso descreve todos os locais?"*

**Transição para o próximo bloco:**
> *"Para testar se essa queda foi homogênea, descemos a escala de análise para as regiões e municípios."*

---

### 3:45 – 5:15 | Bloco 4: Perguntas 2 e 3 — Fratura Regional e Assimetria Municipal (H2)
**Slide na Tela:** Slides 4 e 5 — `figuras/02_regioes.png` e `figuras/03_mudancas_municipais.png`.

**Fala Sugerida:**
> *"A resposta é um enfático não. Ao desagregar o estado em quatro macrorregiões — Capital, Baixada Fluminense, Grande Niterói e Interior —, encontramos dinâmicas opostas.  
> O resultado mais surpreendente está no roubo de veículos: enquanto a Baixada Fluminense caiu 45,5% e a Grande Niterói despencou 75,9%, a Capital do Rio de Janeiro terminou 2024 com uma taxa de 41,96 roubos por 100 mil veículos — um aumento de 3,1% em relação aos 40,71 registrados em 2014!  
> Durante o auge da crise em 2017, a Baixada ultrapassou 102 roubos mensais por 100 mil veículos, e a Capital passou de 70. Mas, na recuperação pós-2020, a Capital desacelerou sua melhora e voltou a subir em 2024.  
> Quando descemos ao nível dos municípios, essa assimetria ganha contornos dramáticos. Dos 82 municípios do painel, embora 65 tenham registrado queda nas duas modalidades, identificamos 12 municípios com aumento em roubo de rua e 7 em roubo de veículo.  
> O caso mais impressionante é Belford Roxo: a taxa média mensal de roubo de veículos aumentou em incríveis 17,43 pontos, consolidando uma das taxas mais elevadas de todo o Brasil (mais de 120 por 100 mil veículos). Em contrapartida, cidades vizinhas na Baixada e Região Metropolitana, como Nilópolis e São Gonçalo, conseguiram reduções superiores a 90 pontos.  
> A Hipótese 2 está solidamente confirmada: a segurança pública fluminense é marcada por uma geografia profundamente polarizada."*

**Defesa Técnica:**
- Se o professor perguntar: *"A Capital aumentou roubo de veículo mesmo?"*  
  Resposta: *"Sim. Em 2014, a média das taxas mensais na Capital foi de 40,71; em 2024 foi de 41,96. Ela teve queda expressiva após o pico de 2017 (quando atingiu 70,83), mas os repiques em 2023 e 2024 deixaram o índice da Capital ligeiramente acima do patamar de dez anos atrás."*

---

### 5:15 – 6:30 | Bloco 5: Perguntas 4 e 5 — Dispersão e a Mutação dos Roubos de Rua
**Slide na Tela:** Slides 6 e 7 — `figuras/04_dispersao.png` e `figuras/07_decomposicao_rua.png`.

**Fala Sugerida:**
> *"A quarta pergunta avalia a dispersão absoluta entre os municípios: o intervalo interdecil (P90 menos P10) caiu mais de 50% em ambas as categorias. A distância entre os municípios típicos estreitou-se porque a grande maioria convergiu para patamares menores, embora os polos extremos continuem distantes.  
> Mas o achado mais transformador da nossa pesquisa está na Pergunta 5: o que exatamente as pessoas estão roubando nas ruas do Rio de Janeiro?  
> Em 2014, os roubos de celular representavam apenas 8,1% do total de roubos de rua registrados no estado. Em 2024, essa proporção saltou para 36,6% — um acréscimo de 28,5 pontos percentuais!  
> No Marco 3, fomos além e decompusemos as ocorrências nos seus três componentes oficiais: transeunte, celular e coletivo.  
> Os números absolutos contam uma história estarrecedora: enquanto as ocorrências de roubo a transeunte caíram de mais de 80 mil para 30 mil (-61%), e os roubos em ônibus caíram 15%, os roubos de smartphone foram na contramão: saltaram de 7.758 para 21.416 ocorrências anuais no painel — um crescimento de quase 300%!  
> Houve uma clara substituição criminológica: o celular tornou-se a moeda central do crime patrimonial nas ruas, potencializado pelo valor de revenda dos aparelhos, mercado clandestino de peças e, crucialmente, pela expansão do sistema bancário digital e transferências instantâneas via PIX."*

---

### 6:30 – 7:45 | Bloco 6: Pergunta 6 — Sazonalidade e Validação Estatística (H3)
**Slide na Tela:** Slides 8 e 9 — `figuras/06_perfil_mensal.png` e `figuras/08_sazonalidade_heatmap.png`.

**Fala Sugerida:**
> *"Chegamos à sexta pergunta, que no Marco 2 havia permanecido aberta: existem meses em que as taxas são sistematicamente mais altas?  
> Para isolar o efeito do calendário, normalizamos as taxas pelo número de dias de cada mês e criamos um índice diário padronizado em 100 para a média de cada município e ano.  
> Visualmente, observamos um padrão estacional claro: roubo de rua atinge seu pico em fevereiro (índice 118), coincidindo com o verão, Carnaval e grandes concentrações urbanas. Já o roubo de veículos tem pico em janeiro (índice 121), associado a férias e deslocamentos rodoviários. Em ambos, os vales ocorrem no meio do ano, entre julho e setembro.  
> Em 2020, observamos o choque exógeno da quarentena, que derrubou as taxas nos meses de abril e maio. Mas, ao remover 2020 da série, o perfil sazonal permanece praticamente inalterado.  
> Para encerrar definitivamente a dúvida que restou na entrega intermediária, aplicamos o teste não-paramétrico de Kruskal-Wallis comparando as distribuições mensais ao longo dos 11 anos.  
> Os resultados foram inequívocos:  
> Para roubo de rua: estatística H de 24,34 e p-valor de 0,011.  
> Para roubo de veículo: estatística H de 39,83 e p-valor de 0,00004!  
> Mesmo excluindo o ano da pandemia, ambos continuam significativos ao nível de 5%.  
> Com isso, a Hipótese 3 deixa de ser uma conjectura exploratória e ganha validação estatística formal."*

---

### 7:45 – 8:45 | Bloco 7: Sensibilidade do Recorte e Reflexão Metodológica
**Slide na Tela:** Slide 10 — Tabela de Sensibilidade (82 vs 92 Municípios, 2018–2024).

**Fala Sugerida:**
> *"Como teste de robustez, avaliamos se nossa exclusão inicial de 10 municípios comprometeu as conclusões gerais.  
> Reexecutamos os cálculos no intervalo de 2018 a 2024 — período em que todos os 92 municípios fluminenses possuíam registros contínuos.  
> A direção e a magnitude dos resultados foram idênticas: a variação percentual de queda no painel de 82 municípios foi de -69,5% em rua e -64,3% em veículos; no universo integral dos 92 municípios, foi de -70,5% e -64,9%.  
> Isso comprova que nossa cautela metodológica protegeu a qualidade da análise inicial sem introduzir viés de seleção no comportamento macro da criminalidade fluminense."*

---

### 8:45 – 10:00 | Bloco 8: Conclusões, Limitações Epistemológicas e Fechamento
**Slide na Tela:** Slide 11 — Síntese das Hipóteses, Limitações e Encerramento.

**Fala Sugerida:**
> *"Para concluir, sintetizamos nossas três respostas centrais:  
> 1. A média municipal de roubos no Rio de Janeiro caiu mais de 55% entre 2014 e 2024, mas após um pico severo em 2016-2017.  
> 2. Essa queda foi espacialmente heterogênea: a Capital do estado não reduziu roubos de veículos na década, e cidades como Belford Roxo enfrentaram piora dramática.  
> 3. O perfil do roubo de rua sofreu mutação estrutural, com o smartphone dominando as ocorrências, e obedece a um padrão sazonal estatisticamente significante com picos no verão.  
>  
> Reconhecemos com humildade os limites do nosso trabalho: lidamos exclusivamente com dados comunicados à polícia, sujeitos à cifra oculta da subnotificação e incentivos de queixa (como a exigência de B.O. para seguradoras). Além disso, como cientistas de dados, enfatizamos que esta é uma análise estritamente exploratória e descritiva; não realizamos inferência causal de políticas públicas.  
> Todo o nosso código, dados auditados, visualizações estáticas e dashboards interativos estão documentados de forma 100% reprodutível no GitHub do projeto.  
> Muito obrigado pela atenção, e estamos à disposição para os comentários e perguntas da banca!"*

---

## Guia Rápido de Respostas para Perguntas da Banca

1. **Pergunta:** *"Por que usar média de taxas municipais em vez da taxa estadual somando todos os casos?"*  
   **Resposta:** *"Porque a pergunta do nosso trabalho é sobre a distribuição territorial entre os municípios ('uma mudança igual para todos?'). Se somássemos todas as ocorrências e dividíssemos pela população estadual, a Capital e São Gonçalo determinariam quase 60% do índice, apagando completamente a realidade dos outros 80 municípios. Ao usar a média municipal com igual peso, cada município conta como uma unidade federativa no laboratório fluminense."*

2. **Pergunta:** *"A alta do roubo de celular não seria apenas um aumento na taxa de notificação porque as pessoas agora têm seguro de celular?"*  
   **Resposta:** *"Esse é um excelente ponto de crítica epistemológica. A expansão de seguros de smartphone e a exigência de B.O. para bloqueio de IMEI certamente incentivam a notificação. No entanto, o crescimento de 176% nos registros de celular ocorreu paralelamente a uma queda de 61% nos roubos a transeunte sem celular especificado. Portanto, ainda que haja viés de registro, a magnitude do fenômeno reflete também a centralidade do celular na economia urbana contemporânea."*

3. **Pergunta:** *"Por que o teste de Kruskal-Wallis foi o escolhido para testar sazonalidade?"*  
   **Resposta:** *"Optamos pelo Kruskal-Wallis por se tratar de um teste não-paramétrico que não assume distribuição normal dos dados nem homocedasticidade estrita, o que é ideal para taxas mensais de criminalidade que frequentemente apresentam assimetria e caudas longas."*
