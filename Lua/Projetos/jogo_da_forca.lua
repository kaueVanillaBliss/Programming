math.randomseed(os.time())

local function jogar_forca()
    local palavras = {"chansey", "wigglytuff", "blissey", "happiny", "comfey"}
    local palavra_secreta = palavras[math.random(#palavras)]

    local letras_descobertas = {}
    for i = 1, #palavra_secreta do
        letras_descobertas[i] = "_"
    end

    local erros = {}
    local tentativas = {} -- Tabela funcionando como Set (Dicionário)
    local max_erros = 5
    local letras_restantes = #palavra_secreta -- Contador simples para checar vitória

    print("Bem-vindo ao jogo da forca Pokémon!")
    print(table.concat(letras_descobertas, " "))
    local running = true
    
    while running do
        io.write("\nDigite uma letra: ")
        local entrada = io.read()
        
        -- Previne erro caso o usuário feche o terminal (Ctrl+C / Ctrl+D)
        if not entrada then break end 
        
        local letra = entrada:lower()

        -- 1. Validação com Lua Patterns (%a = qualquer letra)
        if #letra ~= 1 or not letra:match("%a") then
            print("Entrada inválida! Digite apenas UMA letra.")
        
        -- 2. Busca instantânea na tabela de tentativas (sem precisar de loop)
        elseif tentativas[letra] then
            print("Você já tentou a letra '" .. letra .. "'!")
        
        else
            -- Registra a letra no nosso "Set"
            tentativas[letra] = true
            local acertou = false

            -- 3. Verifica e substitui em um único loop
            for i = 1, #palavra_secreta do
                if palavra_secreta:sub(i, i) == letra then
                    letras_descobertas[i] = letra
                    acertou = true
                    letras_restantes = letras_restantes - 1
                end
            end

            if acertou then
                print("Boa! A letra '" .. letra .. "' está na palavra.")
            else
                print("A letra '" .. letra .. "' NÃO está na palavra.")
                table.insert(erros, letra)
            end

            print("\nPalavra: " .. table.concat(letras_descobertas, " "))
            print("Erros (" .. #erros .. "/" .. max_erros .. "): " .. table.concat(erros, ", "))

            -- Checagem de vitória usando contador (evita outro loop na tabela)
            if letras_restantes == 0 then
                print("\nParabéns, você venceu! O Pokémon era " .. palavra_secreta)
                running = false
            end

            if #erros >= max_erros then
                print("\nGame Over! O Pokémon era: " .. palavra_secreta)
                running = false
            end
        end
    end
end

jogar_forca()