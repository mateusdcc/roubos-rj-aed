# Roubos no Rio de Janeiro: uma mudança igual para todos?

Projeto de Análise Exploratória de Dados e Visualização, FGV EMAp, 2026.2.
Integrantes: Mateus Cavalcanti, Pedro Braga e Felipe.

O **Marco 2** investiga diferenças entre municípios, regiões, tipos de roubo e meses,
com dados do ISP-RJ de 2014 a 2024. O notebook está escrito como artigo e contém
fontes, hipóteses, auditoria, transformações, seis perguntas, gráficos e análises.

- [Notebook executado](marco2.ipynb)
- [Artigo em HTML](marco2.html) — baixe e abra no navegador.
- [Visualização interativa das regiões](figuras/regioes_interativo.html) — funciona offline após baixar.
- [Roteiro da apresentação de cinco minutos](roteiro_marco2.md)

## Executar com Nix

O `flake.lock` fixa o nixpkgs e as versões transitivas do Python e das bibliotecas.
O ambiente contempla macOS e Linux, Intel e ARM; foi executado em macOS ARM.
É necessário Nix com `nix-command` e `flakes` habilitados.

```bash
git clone https://github.com/mateusdcc/roubos-rj-aed.git
cd roubos-rj-aed
nix develop
jupyter lab marco2.ipynb
```

Para executar todas as células e atualizar o artigo:

```bash
nix develop --command jupyter nbconvert --to notebook --execute --inplace marco2.ipynb --ExecutePreprocessor.timeout=300
nix develop --command jupyter nbconvert --to html marco2.ipynb
```

O kernel `python3` do ambiente Nix executa os cálculos. Não há instalação via pip.
A primeira entrada no ambiente requer internet para obter os pacotes; a execução
da análise usa os arquivos locais. Gráficos estáticos são gravados em `figuras/`.

## Dados e método

Os arquivos originais em `data/` são públicos e preservados sem alterar os valores.
`fontes.json` registra URL, data de acesso e SHA-256; o notebook verifica os hashes.
Os CSVs usam Latin-1, ponto e vírgula e vírgula decimal.

| Fonte do ISP-RJ | Acesso | Uso |
|---|---|---|
| [BaseMunicipioTaxaMes.csv](https://www.ispdados.rj.gov.br/Arquivos/BaseMunicipioTaxaMes.csv) | 30/09/2026 | Taxas mensais, 92 municípios, 2014–2024 |
| [BaseMunicipioMensal.csv](https://www.ispdados.rj.gov.br/Arquivos/BaseMunicipioMensal.csv) | 07/10/2026 | Contagens, filtradas para 2014–2024 no notebook |
| [Dicionário das taxas](https://www.ispdados.rj.gov.br/Arquivos/DicionarioDeVariaveisBaseMunic%C3%ADpioTaxaM%C3%AAs.xlsx) | 07/10/2026 | Unidades e definições |

[Portal](https://www.ispdados.rj.gov.br/estatistica.html),
[notas e dicionários](https://www.ispdados.rj.gov.br/Notas.html) e
[metodologia](https://www.ispdados.rj.gov.br/metodDivulDados.html).

**Unidades:** roubo de rua/celular por 100 mil habitantes; roubo de veículo por
100 mil veículos. Taxas municipais não são somadas. As médias do painel dão o
mesmo peso a cada município, e cada valor anual é a média das 12 taxas mensais.
Roubo de celular já integra roubo de rua.

Dez municípios têm todos os registros de ocorrência zerados no início da série.
O painel principal usa 82 municípios e uma sensibilidade usa os 92 a partir de
2018. Essa precaução não prova a causa dos zeros. As contagens e taxas têm datas
de acesso distintas; não são combinadas para reconstruir denominadores.

## Estado da entrega

Entrega intermediária com resultados exploratórios e hipóteses em revisão.
Não há identificação causal nem conclusões sobre crimes não comunicados à polícia.
O grupo deve incorporar o retorno do professor e registrar suas contribuições
efetivas para a entrega final.
