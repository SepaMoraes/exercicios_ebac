            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero me autenticar
            Para realizar minha compra

            Contexto
            Dado que adicionei produtos ao meu carrinho e efetuarei o login para concluir a compra

            Cenário: Autenticação válida
            Quando eu digitar o usuário "vinicius@ebac-shop.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas: "Olá Vinícius"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxxxxxx@ebac-shop.com.br"
            E a senha "senha@123"
            Então deve exibir a mensagem de alerta: "Usuário inexistente"

            Cenário: Senha inválida
            Quando eu digitar o usuário "vinicius@ebac-shop.com.br"
            E a senha "00000000000"
            Então deve exivir uma mensagem de alerta: "Senha inválida"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                    | senha       | mensagem       |
            | "vinicius@ebac-shop.com.br | "senha@123" | "Olá Vinícius" |
            | "cecilia@ebac-shop.com.br" | "senha@123" | "Olá Cecilia"  |
            | "ruth@ebac-shop.com.br"    | "senha@123" | "Olá Ruth"     |
