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



Esquema do Cenário: Cadastro com <tipo_de_dado> correto
    Quando eu preencho o campo "Nome" com <nome>"
    E eu preencho o campo "Sobrenome" com <sobrenome>"
    E eu preencho o campo "Nome da empresa(opcional)" com <nome_da_empresa>"
    E eu seleciono o combo "País" com <país>"
    E eu preencho o "Endereço" com <endereco>
    E eu preencho o campo "Cidade" com <cidade>
    E eu preencho o campo "País(opcional)" com <pais_opcional> 
    E eu preencho o campo "Cep" com <cep>
    E eu preencho o campo "Telefone" com <telefone>
    E eu preencho o campo "Endereço de e-mail" com <e-mail>
    E eu clico no botão "Finalizar Compra"
    Então o sistema deve exibir a "Mensagem" 
    E eu devo ser redirecionado para a página de confirmação de compra
    Exemplos:
    | tipo_de_dado    | nome | sobrenome | nome_da_empresa | país   | endereco       | cidade   | pais_opcional | cep       | telefone        | e-mail            | mensagem                                 |
    | Válidos         | João | Silva     | Testes          | Brasil | Rua teste, 123 | Testes   |    ""         | 09360-330 | (11) 98567-1310 | teste@teste.com.br| "Cadastro Finalizado com sucesso."       |
    | Inválido        |      | Silva     | Testes          | Brasil | Rua teste, 123 | Testes   |    ""         | 09360-330 | (11) 98567-1310 | teste@teste.com.br| "O campo nome deve ser preenchido."      |
    | Inválido        | João |           | Testes          | Brasil | Rua teste, 123 | Testes   |    ""         | 09360-330 | (11) 98567-1310 | teste@teste.com.br| "O campo sobrenome deve ser preenchido." |
    | Inválido        | João | Silva     | Testes          |        | Rua teste, 123 | Testes   |    ""         | 09360-330 | (11) 98567-1310 | teste@teste.com.br| "O campo país deve ser preenchido."      |
    | Inválido        | João | Silva     | Testes          | Brasil |                | Testes   |    ""         | 09360-330 | (11) 98567-1310 | teste@teste.com.br| "O campo endereço deve ser preenchido."  |
    | Inválido        | João | Silva     | Testes          | Brasil | Rua teste, 123 |          |    ""         | 09360-330 | (11) 98567-1310 | teste@teste.com.br| "O campo cidade deve ser preenchido."    |
    | Inválido        | João | Silva     | Testes          | Brasil | Rua teste, 123 | Testes   |    ""         |           | (11) 98567-1310 | teste@teste.com.br| "O campo cep deve ser preenchido."       |
    | Inválido        | João | Silva     | Testes          | Brasil | Rua teste, 123 | Testes   |               | 09360-330 | 123456789       | teste@teste.com.br| "Telefone deve ter o formato correto."   |
    | Inválido        | João | Silva     | Testes          | Brasil | Rua teste, 123  | Testes  |               | 09360-330 | (11) 98567-1310  | teste@com.       | "E-mail inválido"                        |
    | Inválido        | João | Silva     | Testes          | Brasil | Rua teste, 123  | Testes  |               | 09360-330 | (11) 98567-1310  |                  | "O campo e-mail deve ser preenchido."    |