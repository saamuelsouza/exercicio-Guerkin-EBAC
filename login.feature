            #language: pt

            Funcionalidade: Adição ao carrinho
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação da EBAC-SHOP 

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@1234"
            Então deve exibir uma mensagem de boas vindas: "Olá João!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "joaozinho@ebac.com.br"
            E a senha "senha@1234"
            Então deve exibir uma mensagem de alerta: "Usuário não identificado"

            Cenário: Senha incorreta
            Quando eu digitar o usuário "joaozinho@ebac.com.br"
            E a senha "senha@1234"
            Então deve exibir uma mensagem de de alerta: "Usuário ou senha incorretos"

            Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha        | mensagem     |
            | "joao@ebac.com.br"  | "senha@1234" | "Olá João!"  |
            | "maria@ebac.com.br" | "senha@1234" | "Olá Maria!" |
            | "jose@ebac.com.br"  | "senha@1234" | "Olá José!"  |
            | "bruna@ebac.com.br" | "senha@1234" | "Olá Bruna!" |
