#language: pt

Funcionalidade: Login (atenticação) na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Contexto: Dado que eu estou na página de login da EBAC-SHOP


Cenario: Login com dados válidos
    Quando eu inserir um usuário e senha válidos
    Então eu devo ser redirecionado para a tela de checkout


Cenario: Login com campo de usuário inválido
    Quando eu inserir um usuário inválido e uma senha válida
    Então deve exibir a mensagem "Usuário ou senha inválidos"


Cenario: Login com campo de senha inválido
    Quando eu inserir um usuário válido e uma senha inválida
    Então deve exibir a mensagem "Usuário ou senha inválidos"


Cenario: Login com ambos os campos inválidos
    Quando eu inserir um usuário inválido e uma senha inválida
    Então deve exibir a mensagem "Usuário ou senha inválidos"


Esquema do Cenário: Login com <tipo> válido e inválido
    Quando eu inserir "<usuario>" e "<senha>"
    Então "<resultado>" deve ser o comportamento esperado

    Exemplos:
    | tipo                   | usuario          | senha          | resultado                             |
    | válido                 | usuario_valido   | senha_valida   | redirecionado para a tela de checkout |
    | usuário inválido       | usuario_invalido | senha_valida   | "Usuário ou senha inválidos"          |
    | senha inválida         | usuario_valido   | senha_invalida | "Usuário ou senha inválidos"          |
    | ambos inválidos        | usuario_invalido | senha_invalida | "Usuário ou senha inválidos"          |


Cenario: Exceder tentativas de login com dados inválidos
    Quando eu tentar fazer login com "<usuario>" e "<senha>" por varias vezes <tentativas> 
    Então minha conta deve ser bloqueada com a mensagem "Número máximo de tentativas excedido."
    Exemplos:
    | usuario          | senha          | tentativas |
    | usuario_invalido | senha_invalida | 3          |
    | usuario_invalido | senha_valida   | 3          |
    | usuario_valido   | senha_invalida | 3          |    