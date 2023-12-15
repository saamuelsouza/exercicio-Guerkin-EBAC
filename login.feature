            #language: pt

            Funcionalidade: Adição ao carrinho
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho
            
            Contexto: Dado que eu acesse a página do produto


            Cenário: Adição válida
            Quando eu selecionar a opção de "cor", o meu "tamanho"
            E houver "até 10 produtos" relacionados
            Então os produtos devem ser "adicionados ao carrinho"

            Cenário: Adição de produto inválida
            Quando eu selecionar "cor", o meu "tamanho"
            E houver "mais de 10 produtos" relacionados
            Então deve exibir uma mensagem de alerta: "Quantidade não permitida"

            Cenário: Limpar opções
            Quando eu clicar no "botão Limpar"
            Então as as opções selecionadas cor, tamanho e quantidade serão "removidas"

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

            Funcionalidade: Finalizar compra
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de Checkout da EBAC-SHOP

            Cenário: Pagamento aprovado
            Quando eu preencher os campos obrigatórios
            E o email "joao@ebac.com.br" mais a senha "senha@1234"
            Então deve exibir uma mensagem de conclusão: "Compra realizada com sucesso!"

            Cenário: Pagamento não aprovado
            Quando eu preencher o email "joaozinho@ebac.com.br"
            E deixar de preencher algum dos campos obrigatórios 
            Então deve exibir uma mensagem de alerta: "e-mail incorreto!"

            Cenário: Múltiplos pagamentos aprovados
            Quando eu preencher os campos obrigatórios
            E o <email> e <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha        | mensagem                        |
            | "joao@ebac.com.br"  | "senha@1234" | "Compra realizada com sucesso!" |
            | "maria@ebac.com.br" | "senha@1234" | "Compra realizada com sucesso!" |
            | "jose@ebac.com.br"  | "senha@1234" | "Compra realizada com sucesso!" |
            | "bruna@ebac.com.br" | "senha@1234" | "Compra realizada com sucesso!" |