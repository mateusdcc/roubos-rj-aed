# Declaração de Contribuições Individuais — Marco 3 (Entrega Final)
**Projeto:** Roubos no Rio de Janeiro: uma mudança igual para todos?  
**Disciplina:** Análise Exploratória de Dados e Visualização (2026.2) — FGV EMAp  
**Docente:** Prof. João Rulff  
**Integrantes:** Mateus Cavalcanti, Pedro Braga e Felipe  

---

## 1. Visão Geral da Coordenação da Equipe

A equipe trabalhou em regime de colaboração horizontal e contínua ao longo de todo o semestre letivo (Marcos 1, 2 e 3). Todas as decisões estruturais — incluindo o recorte do problema, a definição das hipóteses, a exclusão preventiva dos dez municípios na auditoria de dados e as escolhas de codificação visual — foram amplamente debatidas e consensuadas pelo trio.

Para assegurar o cumprimento rigoroso dos critérios de avaliação (Implementação Técnica: 35%, Design de Visualização: 30%, Análise e Achados: 20%, Comunicação: 10%, Trabalho em Equipe: 5%), a divisão de responsabilidades técnicas especializadas foi estruturada de forma equilibrada, conforme detalhado a seguir.

---

## 2. Matriz de Responsabilidades por Integrante

| Etapa / Dimensão do Projeto | Mateus Cavalcanti | Pedro Braga | Felipe |
|---|:---:|:---:|:---:|
| **Concepção e Hipóteses** | Formulação de H1 e H2 | Formulação de H3 e escopo | Refinamento teórico |
| **Pipeline e Engenharia de Dados** | Ambiente Nix e hash SHA-256 | Limpeza e imputação (Paraty) | Auditoria e consistência |
| **Modelagem e Estatística** | Normalização diária e quantis | Teste Kruskal-Wallis e sensibilidade | Decomposição transeunte/celular |
| **Visualizações Estáticas (Matplotlib/Seaborn)** | Gráficos 01 e 02 | Gráficos 03, 07 e 08 | Gráficos 04, 05 e 06 |
| **Visualizações Interativas (Plotly)** | Arquitetura Plotly | Callbacks e layout responsivo | Integração HTML offline |
| **Redação Acadêmica do Notebook** | Seções 1, 2 e 3 | Seções 6, 9 e 11 | Seções 4, 5, 7 e 8 |
| **Apresentação Oral (10 min) e Slides** | Roteiro dos blocos 1 a 3 | Roteiro dos blocos 4 a 6 e slides HTML | Roteiro dos blocos 7 e 8 e Q&A |

---

## 3. Detalhamento das Contribuições Individuais

### Pedro Braga
- **Liderança em Análise Estatística e Sazonalidade:** Concepção e implementação da normalização diária das taxas e execução do teste não-paramétrico de Kruskal-Wallis para a Pergunta 6, convertendo a hipótese estacional aberta do Marco 2 em resultado estatisticamente validado ($p < 0,05$).
- **Análise Espacial e Casos Extremos:** Processamento e geração da visualização divergente dos municípios em destaque (Pergunta 3), identificando e investigando a anomalia crítica de Belford Roxo (+17,43 pontos em roubo de veículo).
- **Comunicação Visual e Apresentação:** Desenvolvimento da estrutura da apresentação oral de 10 minutos (`roteiro_apresentacao_marco3.md`) e da apresentação interativa de slides em HTML (`apresentacao_marco3.html`), garantindo alinhamento estético e aderência ao tempo estipulado.
- **Redação e Revisão:** Redação das seções analíticas de sazonalidade, discussão dos municípios em destaque e participação central na conclusão e limites do estudo.

### Mateus Cavalcanti
- **Arquitetura de Reprodutibilidade:** Configuração do ambiente reprodutível baseado em Nix (`flake.nix` e `flake.lock`), garantindo versões transitivas exatas do Python, bibliotecas e kernel Jupyter em arquiteturas ARM e x86.
- **Auditoria Criptográfica e Governança de Dados:** Implementação da rotina de validação por SHA-256 (`fontes.json`), assegurando a integridade dos dados brutos do ISP-RJ contra revisões não documentadas.
- **Visualização das Trajetórias e Disparidades Regionais:** Codificação visual dos gráficos de evolução temporal geral (`01_trajetorias.png`) e das trajetórias regionais (`02_regioes.png`), destacando o comportamento anômalo da Capital em roubos de veículos.
- **Visualização Interativa:** Criação da versão interativa em Plotly (`figuras/regioes_interativo.html`), com controle de legendas e renderização independente offline.

### Felipe
- **Auditoria de Qualidade e Recorte Territorial:** Condução da auditoria minuciosa que detectou os 40 meses consecutivos zerados em dez municípios, fundamentando tecnicamente a criação do painel balanceado de 82 municípios e a análise de sensibilidade com os 92 municípios pós-2018.
- **Decomposição Estrutural dos Roubos:** Análise aprofundada da Pergunta 5 e derivação do gráfico de decomposição tripla (`07_decomposicao_rua.png`), quantificando a substituição histórica de roubos a transeunte e em coletivo pelo roubo de smartphones.
- **Análise de Dispersão:** Implementação das curvas de quantis (P10, Mediana e P90) para a Pergunta 4 (`04_dispersao.png`), mensurando o estreitamento da desigualdade absoluta intermunicipal.
- **Documentação e Síntese:** Estruturação da documentação metodológica, consolidação das referências bibliográficas do ISP-RJ e elaboração do guia de respostas às perguntas difíceis da banca examinadora.

---

## 4. Declaração de Autoria e Integridade

Os integrantes declaram que todo o código-fonte, transformações analíticas, codificações gráficas e interpretações textuais presentes no repositório final foram desenvolvidos pelos próprios autores para fins acadêmicos na disciplina de AEDV, com dados estritamente públicos e verificáveis.
