#language: pt

Funcionalidade: Checkout
Como Cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto
Dado que efetuei o login após selecionar as caracteristicas dos produtos

Cenário: Cadastro concluído
Quando eu preencher os itens obrigatórios do formulário
E clicar no botão "Finalizar compra"
Então deve exibir a mensagem de sucesso: "Pedido realizado com sucesso!"

Cenário: Dados obrigatórios não preenchidos
Quando eu clicar em "Finalizar compra"
E qualquer campo obrigatório não estiver preenchido
Então deve exibir a mensagem de alerta: "Preencha todos os campos obrigatórios"

Cenário: Campo de e-mail com formato inválido
Quando o campo do e-mail for preenchido
E o preenchimento estiver fora do padrão de e-mail
Então deve exibir a mensagem de erro: "Insira um e-mail válido"