Quando("eu cadastro meu usuário") do
    user.load
    user.preencher_usuario
    sleep 3
end
  
Então("Eu verifico se o usuário foi cadastrado") do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'
end