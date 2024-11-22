#language: pt

Funcionalidade: Concluir Cadastro do Cliente / Finalizar Compras
 Como cliente da EBAC-SHOP
 Eu quero concluir meu cadastro
 Para finalizar minha compra 

Contexto: Dado que estou na página de cadastro da EBAC-SHOP


Cenario: Cadastro com todos os dados obrigatórios preenchidos corretamente
    Quando eu preencho todos os campos obrigatórios com dados válidos
    E clico no botão "Finalizar Compra"
    Então meu cadastro deve ser concluído com sucesso
    E eu devo ser redirecionado para a página de confirmação de compra


Cenario: Cadastro com e-mail em formato inválido
    Quando eu preencho o campo e-mail com um formato inválido (ex: "teste@bol")
    E preencho os demais campos obrigatórios com dados válidos
    E clico no botão "Finalizar Compra"
    Então o sistema deve exibir uma mensagem de erro "E-mail inválido."
    E o cadastro não deve ser concluído


Cenario: Cadastro com campos obrigatórios vazios
    Quando eu deixo campos obrigatórios vazios (ex: nome, e-mail)
    E clico no botão "Finalizar Compra"
    Então o sistema deve exibir uma mensagem de alerta "Todos os campos obrigatórios devem ser preenchidos."
    E o cadastro não deve ser concluído



Cenário: Cadastro com dados obrigatórios faltando
    Dado que estou na página de cadastro da EBAC-SHOP
    Quando não preencho todos os campos obrigatórios
    E clico no botão "Finalizar Compra"
    Então o sistema deve exibir uma mensagem de erro indicando quais campos faltam
    E devo permanecer na página de cadastro