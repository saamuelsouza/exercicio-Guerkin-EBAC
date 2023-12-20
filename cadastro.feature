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