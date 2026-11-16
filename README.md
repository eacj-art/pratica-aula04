# Prática · Encontro 4 · Claude testando a tela

Material da demonstração do Claude in Chrome executando casos de teste da US-01 numa loja fictícia, a Vitrine. Curso IA para QA · CESAR School.

## O que tem aqui

```
loja/           a loja Vitrine em homologação e os scripts para abri-la
pedidos/        os pedidos prontos para colar no Claude in Chrome
apresentacao/   a página da apresentação
```

## Como abrir a loja

Abra a loja por um endereço `http://localhost`, e não com dois cliques no HTML. Arquivo aberto direto do computador costuma ser bloqueado pela extensão.

| Sistema | Como fazer |
|---|---|
| Windows | Dois cliques em `loja/abrir-loja-localhost.bat` |
| macOS | Dois cliques em `loja/abrir-loja-localhost.command`. Se o macOS bloquear, clique com o botão direito e escolha **Abrir** |
| Linux | No terminal, dentro da pasta `loja`, rode `bash abrir-loja-localhost.sh` |

A loja abre em `http://localhost:8000/vitrine-loja.html`. Deixe a janela do script aberta enquanto estiver testando.

Os scripts usam o Python 3. Sem Python, abra `loja/vitrine-loja.html` com a extensão **Live Server** do VS Code.

## Como testar com o Claude in Chrome

1. Abra a loja no Google Chrome.
2. Abra o painel do Claude pelo ícone da extensão, na mesma aba.
3. Escolha o modo **Perguntar antes de agir**.
4. Copie um dos pedidos de `pedidos/pedido-claude-in-chrome.md` (o curto tem 3 casos; o completo, 6) e cole no painel.
5. Leia o plano que o Claude mostra, aprove e acompanhe a execução na aba.
6. No fim, confira cada linha da tabela contra a US-01. Quem decide se o caso passou é você.

## Aviso

A Vitrine, os cupons, os casos de teste e os defeitos são fictícios, criados para a aula. A loja não tem pagamento e não envia nada para lugar nenhum.
