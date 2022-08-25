#language: pt

Funcionalidade: Configuração de produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto
Dado que eu acesse a página da EBAC-SHOP para realizar uma compra

Cenário: Seleção de produto concluída
Quando eu selecionar um dos tamanhos disponíveis na página
E selecionar uma das cores disponíveis
E selecionar quantidade até 10 unidades
Então deve exibir a mensagem de conclusão "Produto adicionado ao carrinho"

Cenário: Seleção de tamanho inválida
Quando eu não selecionar um dos tamanhos disponíveis na página
E selecionar uma das cores disponíveis
E selecionar quantidade até 10 unidades
Então deve exibir a mensagem de alerta "Selecione o tamanho do produto"

Cenário: Seleção de cor inválida
Quando eu selecionar um dos tamanhos disponíveis na página
E não selecionar uma das cores disponíveis
E selecionar quantidade até 10 unidades
Então deve exibir a mensagem de alerta "Seleciona a cor do produto"

Cenário: Seleção de quantidade inválida
Quando eu selecionar um dos tamanhos disponíveis na página
E não selecionar uma das cores disponíveis
E selecionar quantidade de 0 ou maior que 10 unidades
Então deve exibir a mensagem de alerta "Seleciona a quantidade entre 1 e 10 itens"

Cenário: Seleção do botão limpar
Quando eu selecionar um dos tamanhos disponíveis na página
E não selecionar uma das cores disponíveis
E selecionar quantidade de 0 ou maior que 10 unidades
E clicar no botão Limpar
Então todas as seleções feitas pelo usuário devem ser desfeitas.