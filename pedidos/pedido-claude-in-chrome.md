# Pedidos para o Claude in Chrome · loja Vitrine

Abra `vitrine-loja.html` no Chrome, abra o painel do Claude na mesma aba e cole um dos pedidos abaixo.

---

## Pedido curto (ao vivo, 3 casos)

```
Você é analista de QA da Vitrine e vai testar a loja aberta nesta aba. É um ambiente de homologação de uma loja fictícia: não há pagamento e nada é comprado.

Contexto: a regra de negócio é a história US-01, abaixo. Ela é a única fonte de regra.

US-01 · Aplicar cupom de desconto no checkout
R1. O cupom é um código de 6 a 12 caracteres, formado por letras e números.
R2. Cada cupom concede desconto percentual, entre 5% e 50%, ou desconto de valor fixo em reais.
R3. O desconto incide sobre o valor dos produtos. O frete não recebe desconto.
R4. Cada cupom tem data de validade. Depois dela, o cupom é recusado com a mensagem "Cupom expirado".
R5. Alguns cupons exigem um valor mínimo de pedido.
R6. Só um cupom pode ser aplicado por pedido.
CA1. Carrinho com R$ 200,00 em produtos e frete de R$ 20,00, cupom BEMVINDO10 (10%): desconto de R$ 20,00 e total de R$ 200,00.
CA2. Cupom vencido: mensagem "Cupom expirado" e o total não muda.
CA3. Com um cupom aplicado, aplicar outro cupom válido: o novo substitui o anterior.

Tarefa: execute os casos de teste abaixo, um por vez. Antes de cada caso, clique em "Esvaziar carrinho".

CT01 (R3, CA1). Adicione 2 unidades de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom BEMVINDO10. Esperado: desconto de R$ 20,00 e total de R$ 200,00.
CT04 (CA3). Adicione 2 unidades de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom BEMVINDO10 e, em seguida, o cupom DESC30 (R$ 30,00 de desconto fixo). Esperado: DESC30 substitui BEMVINDO10; desconto de R$ 30,00 e total de R$ 190,00.
CT05 (R1). Adicione 1 unidade de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom bemvindo10, em letras minúsculas. Esperado: o cupom é aceito, como acontece com BEMVINDO10.

Restrições:
- Use só a US-01. Não use regra que não esteja escrita nela.
- Se o resultado esperado de um caso depender de algo que a US-01 não define, não marque como falha: marque "Lacuna" e escreva a pergunta para o PO.
- Não vá para pagamento e não mexa em nada fora do carrinho.

Como responder: ao final, uma tabela com as colunas Caso | Status (Passou, Falhou, Lacuna ou Bloqueado) | Esperado | Obtido (copie da tela a mensagem do cupom e os valores de Desconto e Total) | Regra. Depois da tabela, liste os possíveis defeitos com os passos para reproduzir.
```

---

## Pedido completo (6 casos)

```
Você é analista de QA da Vitrine e vai testar a loja aberta nesta aba. É um ambiente de homologação de uma loja fictícia: não há pagamento e nada é comprado.

Contexto: a regra de negócio é a história US-01, abaixo. Ela é a única fonte de regra.

US-01 · Aplicar cupom de desconto no checkout
R1. O cupom é um código de 6 a 12 caracteres, formado por letras e números.
R2. Cada cupom concede desconto percentual, entre 5% e 50%, ou desconto de valor fixo em reais.
R3. O desconto incide sobre o valor dos produtos. O frete não recebe desconto.
R4. Cada cupom tem data de validade. Depois dela, o cupom é recusado com a mensagem "Cupom expirado".
R5. Alguns cupons exigem um valor mínimo de pedido.
R6. Só um cupom pode ser aplicado por pedido.
CA1. Carrinho com R$ 200,00 em produtos e frete de R$ 20,00, cupom BEMVINDO10 (10%): desconto de R$ 20,00 e total de R$ 200,00.
CA2. Cupom vencido: mensagem "Cupom expirado" e o total não muda.
CA3. Com um cupom aplicado, aplicar outro cupom válido: o novo substitui o anterior.

Tarefa: execute os casos de teste abaixo, um por vez. Antes de cada caso, clique em "Esvaziar carrinho".

CT01 (R3, CA1). Adicione 2 unidades de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom BEMVINDO10. Esperado: desconto de R$ 20,00 e total de R$ 200,00.
CT02 (R5). Adicione 1 unidade de "Vaso de cerâmica Terra". Escolha a entrega "Econômica". Aplique o cupom MINIMO50 (R$ 10,00 de desconto, exige pedido mínimo de R$ 50,00). Esperado: o cupom é recusado; desconto de R$ 0,00 e total de R$ 45,00.
CT03 (R4, CA2). Adicione 1 unidade de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom VERAO2025 (validade encerrada em 31/03/2026). Esperado: mensagem "Cupom expirado" e total de R$ 120,00, sem mudança.
CT04 (CA3). Adicione 2 unidades de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom BEMVINDO10 e, em seguida, o cupom DESC30 (R$ 30,00 de desconto fixo). Esperado: DESC30 substitui BEMVINDO10; desconto de R$ 30,00 e total de R$ 190,00.
CT05 (R1). Adicione 1 unidade de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom bemvindo10, em letras minúsculas. Esperado: o cupom é aceito, como acontece com BEMVINDO10.
CT06 (R2, R3). Adicione 1 unidade de "Luminária de mesa Aurora". Escolha a entrega "Padrão". Aplique o cupom MINIMO50 (R$ 10,00 de desconto fixo, mínimo de R$ 50,00). Esperado: desconto de R$ 10,00 e total de R$ 110,00.

Restrições:
- Use só a US-01. Não use regra que não esteja escrita nela.
- Se o resultado esperado de um caso depender de algo que a US-01 não define, não marque como falha: marque "Lacuna" e escreva a pergunta para o PO.
- Não vá para pagamento e não mexa em nada fora do carrinho.

Como responder: ao final, uma tabela com as colunas Caso | Status (Passou, Falhou, Lacuna ou Bloqueado) | Esperado | Obtido (copie da tela a mensagem do cupom e os valores de Desconto e Total) | Regra. Depois da tabela, liste os possíveis defeitos com os passos para reproduzir.
```

---

## Resultado de referência

Calculado a partir do comportamento da loja. Não é uma execução do Claude; serve para conferir a execução ao vivo.

| Caso | O que a loja mostra | Classificação esperada |
|---|---|---|
| CT01 | "Cupom BEMVINDO10 aplicado: 10% de desconto." Desconto − R$ 22,00 · Total R$ 198,00 | Falhou: o percentual incide também sobre o frete (contraria R3 e CA1) |
| CT02 | "Cupom MINIMO50 aplicado: R$ 10,00 de desconto." Desconto − R$ 10,00 · Total R$ 35,00 | Falhou: cupom aceito abaixo do mínimo (contraria R5) |
| CT03 | "Cupon expirado". Desconto R$ 0,00 · Total R$ 120,00 | Falhou: a recusa e o total estão certos, mas o texto difere de "Cupom expirado" (R4, CA2) |
| CT04 | "Cupom DESC30 aplicado: R$ 30,00 de desconto. Ele substituiu o cupom BEMVINDO10." Desconto − R$ 30,00 · Total R$ 190,00 | Passou. Antes da troca, com BEMVINDO10, o desconto aparece como R$ 22,00 (o mesmo defeito do CT01) |
| CT05 | "Cupom inválido". Desconto R$ 0,00 · Total R$ 120,00 | Lacuna: a US-01 não diz se o código diferencia maiúsculas de minúsculas |
| CT06 | "Cupom MINIMO50 aplicado: R$ 10,00 de desconto." Desconto − R$ 10,00 · Total R$ 110,00 | Passou |
