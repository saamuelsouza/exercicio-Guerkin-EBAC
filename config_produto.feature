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
