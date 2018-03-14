#language: pt
#utf-8

@teste
Funcionalidade: Registro do Empregado no site OrangeHRM
Eu como usuario do site OrangeHRM
Quero acessar com usuario de perfil admin
Para editar um empregado

@editar
Cenario: Editar Empregado no site OrangeHRM
Dado que esteja logado no site orangehrm com perfil admin
Quando acessar a aba PIM e clicar em Employee List 
Entao o usuario editara um empregado

@adicionar
Cenario: Adicionar Empregado no site OrangeHRM
Dado que esteja logado no site orangehrm com perfil admin
Quando acessar a aba PIM e clicar em Add Employee  
Entao o usuario adicionara um empregado



