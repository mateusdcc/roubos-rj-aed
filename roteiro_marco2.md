# Apresentação intermediária — cinco minutos

Integrantes: Mateus Cavalcanti, Pedro Braga e Felipe.

## 0:00–0:45 — pergunta e dados

Apresentar a pergunta: as mudanças nos roubos do RJ foram iguais entre municípios
e categorias? Usamos dados públicos do ISP-RJ, de 2014 a 2024, em 92 municípios.
O notebook e os dados estão no repositório público. Mostrar a auditoria: por
precaução, o painel principal tem 82 municípios. Rua usa população; veículos usam frota.

## 0:45–1:40 — evolução média

Mostrar `figuras/01_trajetorias.png`. No painel, as médias das taxas municipais
caem aproximadamente 56% para rua e 58% para veículos entre 2014 e 2024.
São médias municipais sem ponderação, não taxas estaduais. Há picos intermediários.

## 1:40–2:45 — diferenças territoriais

Mostrar `figuras/02_regioes.png` e um exemplo de `03_mudancas_municipais.png`.
A Capital termina 2024 com taxa de roubo de veículos um pouco acima de 2014.
Há municípios com aumento apesar da redução média. Explicar como isso responde
à pergunta central. A hipótese de mudança desigual é compatível com os resultados.

## 2:45–3:35 — composição dos roubos

Mostrar `figuras/05_composicao.png`. A participação de celular nos roubos de rua
passa de cerca de 8% para 37% no painel. A composição usa contagens: celular já
é parte dos roubos de rua e não deve ser contado duas vezes.

## 3:35–4:20 — distribuição e meses

Resumir a redução da dispersão absoluta entre municípios. Mostrar o perfil mensal
de `figuras/06_perfil_mensal.png` e explicar que a faixa representa diferenças
entre anos. A hipótese de sazonalidade permanece aberta; não há teste formal.

## 4:20–5:00 — limites e retorno esperado

Explicar subnotificação, revisões, zeros iniciais e denominadores diferentes.
Mencionar a sensibilidade com 92 municípios a partir de 2018. Para o Marco 3,
incorporar comentários, refinar as hipóteses e estudar mudanças de cobertura.
Pedir comentários sobre o painel conservador e a interpretação do perfil mensal.
