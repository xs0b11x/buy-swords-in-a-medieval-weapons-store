-- Definindo o inventário do jogador
local inventario = {
    ouro = 100,
    espadas = 0
}

-- Definindo os preços das espadas
local precoEspadaComum = 50
local precoEspadaRara = 100

-- Função para comprar espadas
local function comprarEspada(tipoEspada)
    local precoEspada = 0
    
    -- Determina o preço com base no tipo de espada
    if tipoEspada == "comum" then
        precoEspada = precoEspadaComum
    elseif tipoEspada == "rara" then
        precoEspada = precoEspadaRara
    else
        print("Tipo de espada inválido!")
        return
    end

    -- Verifica se o jogador tem ouro suficiente para comprar
    if inventario.ouro >= precoEspada then
        inventario.ouro = inventario.ouro - precoEspada
        inventario.espadas = inventario.espadas + 1
        print("Você comprou uma espada " .. tipoEspada .. "!")
        print("Ouro restante: " .. inventario.ouro)
        print("Espadas no inventário: " .. inventario.espadas)
    else
        print("Você não tem ouro suficiente para comprar uma espada " .. tipoEspada .. "!")
    end
end

-- Testando a função de compra
comprarEspada("comum")
comprarEspada("rara")
comprarEspada("épica")  -- Isso deve imprimir "Tipo de espada inválido!"
