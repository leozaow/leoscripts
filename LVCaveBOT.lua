package.path = package.path .. ";" .. 
Engine.getScriptsDirectory() .. "\\dlls_lib\\lua\\?.lua" .. ";" .. 
Engine.getScriptsDirectory() .. "\\dlls_lib\\lua\\socket\\?.lua"
package.cpath = package.cpath .. ";" .. 
Engine.getScriptsDirectory() .. "\\dlls_lib\\?.dll"

local http = require("socket.http")
local https = require("socket.http")
local ltn12 = require("ltn12")
local os = require("os")

local chaveDeAcesso = chave
local scriptEsperado = script
local versao_rev = "8.8.0-23/04"
local verificado = false

local function verificarAutenticacao()
    local urlFirebase = "https://lv-scripts-default-rtdb.firebaseio.com/" .. chaveDeAcesso .. ".json"
    local response_body = {}
    local res, code = http.request{
        url = urlFirebase,
        method = "GET",
        sink = ltn12.sink.table(response_body)
    }

    if code == 200 then
        local resposta = JSON.decode(table.concat(response_body))
        
        if resposta and resposta.autenticado ~= nil then
            verificado = resposta.autenticado
            resposta.versao_rev = versao_rev

            local corpo = JSON.encode(resposta)
            local response_body_put = {}
            res, code = http.request{
                url = urlFirebase,
                method = "PUT",
                headers = {
                    ["Content-Type"] = "application/json",
                    ["Content-Length"] = tostring(#corpo)
                },
                source = ltn12.source.string(corpo),
                sink = ltn12.sink.table(response_body_put)
            }

            if code == 200 then
                if verificado then
                    --Game.talkPrivate("[" .. scriptEsperado .. "] Script principal - verificado = verdadeiro - " .. tostring(verificado), Player.getName())
                else
                    --Game.talkPrivate("[" .. scriptEsperado .. "] Script principal - verificado = falso - " .. tostring(verificado), Player.getName())
                end
            else
                print("Erro ao atualizar o banco de dados: " .. code)
            end
        else
            print("Erro: Não foi possível verificar 'autenticado'.")
        end
    else
        print("Erro ao acessar o banco de dados: " .. code)
    end
end

local function agendarVerificar()
    Timer("verificar", function()
        verificarAutenticacao()
    end, 1000 * 60 * 61)
end

wait(1000)
agendarVerificar()

-- INICIO PARTE DO CODIGO PRINCIPAL
local function getPlayerNameSafely()
    if Client.isConnected() then
        if Player and type(Player.getName) == "function" then
            local success, playerName = pcall(Player.getName)
            if success and playerName then
                return playerName
            else
                print("Erro ao tentar recuperar o nome do jogador.")
            end
        else
            print("Player.getName não está disponível.")
        end
    else
        print("Cliente não está conectado.")
    end
    return "NomeIndisponivel"  -- Retorna um valor padrão se o cliente não estiver conectado ou se ocorrer algum erro
end
			
local Directory = Engine.getScriptsDirectory()						
			
print("Script cavebot iniciado.\nChave: " .. chave)-- .. chaveDeAcesso)
local basePath = Directory .. "\\configs\\"
local playerName = getPlayerNameSafely()



--- copie AQUI para o old ----------------------------------------------

-- Funcao para carregar configuracoes de um arquivo
-- Valores padrao de configuracao
local defaultConfig = {
    maxMonstersToStop = 8,
    minMonstersToResume = 2,
	distCreatures = 6,
    maxStepDelay = 1000,
    singleStepDelay = 100,
    minStepDelay = 50,
    HUDhorizontal = 50,
    HUDvertical = 310,
    PositionsHunt = 'default',
	EffectsWalk = true,
	EffectsAlarm = true,
	hasBonusEffectOnStep = true,
	EffectsToWalk = {56, 263, 264, 265, 266, 267, 244},
	EffectsToAlarm = {56, 57, 263, 264, 265, 266, 267, 307, 244},
	bonusEffectsOnStep = {193},
	itemsWalk = true,
	itemsAlarm = true,
	itemsAlarmStop = false,
	itemsToWalk = {44850, 39176, 39533},
	itemsToAlarm = {23473},
	GMchatWalk = true,
	GMchatAlarm = true,
	GMchatNames = {"GM Cardozo", "DEV Riyura", "snnyster", "Techrlz", "Rubini on Bellum", "Guido on Bellum", "Wylla on Bellum", "Vespa on Bellum", "Escanor on Bellum", "Cheese on Bellum", "Rubini on Elysian", "Guido on Elysian", "Wylla on Elysian", "Vespa on Elysian", "Escanor on Elysian", "Cheese on Elysian", "Guido on Cellenium", "Rubini on Cellenium", "Wylla on Cellenium", "Vespa on Cellenium", "Cheese on Cellenium", "Becker on Cellenium", "Escanor on Cellenium"},
    TeleportEffectAlarm = true,
    TeleportEffectAlarmInPZ = true,
    TeleportDistanceAlarm = true,
    TeleportDistanceAlarmInPZ = true,
    TeleportDistance = 2,
    autoLootEnabled = false,
	delayClickLoot = 25,
	delayLooting = 1200,
	monstersIgnore = {"rat", "deer", "dwarf"},
	monstersStop99 = {"plunder patriarch", "man in the cave"},
	DiagonalCost = 2,
	isPosition = 1,
	AntiKS = false,
}
	
		

-- Lista que define a ordem das chaves para escrita
local configOrder = {
    "maxMonstersToStop",
    "minMonstersToResume",
	"distCreatures",
    "maxStepDelay",
    "singleStepDelay",
    "minStepDelay",
    "HUDhorizontal",
    "HUDvertical",
    "PositionsHunt",
	"EffectsWalk",
	"EffectsAlarm",
	"hasBonusEffectOnStep",
	"EffectsToWalk",
	"EffectsToAlarm",
	"bonusEffectsOnStep",
	"itemsWalk",
	"itemsAlarm",
	"itemsAlarmStop",
	"itemsToWalk",
	"itemsToAlarm",
	"GMchatWalk",
	"GMchatAlarm",
	"GMchatNames",
    "TeleportEffectAlarm",
    "TeleportEffectAlarmInPZ",
    "TeleportDistanceAlarm",
    "TeleportDistanceAlarmInPZ",
    "TeleportDistance",
	"autoLootEnabled",
	"delayClickLoot",
	"delayLooting",
	"monstersIgnore",
	"monstersStop99",
	"DiagonalCost",
	"isPosition",
	"AntiKS",
	
}

local function stringToList(str)
    local list = {}
    str = str:match("{(.*)}") -- Remove as chaves iniciais e finais
    if not str then return list end

    for item in str:gmatch("[^,]+") do
        item = item:match("^%s*['\"]?(.-)['\"]?%s*$") -- Remove espaços e aspas opcionais
        if item ~= "" then
            local num = tonumber(item)
            if num then
                table.insert(list, num) -- Insere como número
            else
                table.insert(list, item) -- Insere como string
            end
        end
    end
    return list
end

local function loadConfigurations(filePath)
    local function writeDefaultConfig(file)
		for _, key in ipairs(configOrder) do
			local value = defaultConfig[key]
			if type(value) == "table" then
				-- Converte a tabela em uma string formatada
				local tableAsString = "{" .. table.concat(value, ", ") .. "}"
				file:write(key .. " = " .. tableAsString .. "\n")
			elseif type(value) == "string" then
				file:write(key .. " = '" .. value .. "'\n")
			else
				file:write(key .. " = " .. tostring(value) .. "\n")
			end
		end
	end

    local function validateConfig(config)
        for _, key in ipairs(configOrder) do
            if config[key] == nil then
                return false
            end
        end
        return true
    end

    local file, reason = io.open(filePath, "r")
    if not file then
        print("Arquivo de configuracoes nao encontrado ou erro na leitura: ", reason)
        file = io.open(filePath, "w")
        if file then
            print("Criando novo arquivo de configuracoes com valores padrao.")
            writeDefaultConfig(file)
            file:close()
            return defaultConfig
        else
            error("Nao foi possível criar o arquivo de configuracoes.")
        end
    else
        local config = {}
        for line in file:lines() do
		local key, value = string.match(line, "(%w+) = '?(.-)'?$")
		if key and value then
				if key == "EffectsToWalk" or key == "EffectsToAlarm" or key == "bonusEffectsOnStep" or key == "itemsToWalk" or key == "itemsToAlarm" or key == "monstersIgnore" or key == "monstersStop99" or key == "GMchatNames" then
				-- Converte a string em uma lista
					config[key] = stringToList(value)
				elseif value == "true" then
					config[key] = true
				elseif value == "false" then
					config[key] = false
				elseif tonumber(value) then
					config[key] = tonumber(value)
				else
					config[key] = value
				end
			end
		end
        file:close()

        if not validateConfig(config) then
            print("Alguma configuracao está ausente ou incorreta. Reescrevendo com padroes.")
            file = io.open(filePath, "w")
            if file then
                writeDefaultConfig(file)
                file:close()
                return defaultConfig
            else
                error("Erro ao reescrever o arquivo de configuracoes com padroes.")
            end
        end

        -- Se chegou aqui, todas as configuracoes sao válidas.
        return config
    end
end

local configFilePath = basePath .. "cavebot_" .. playerName .. "_config.txt"
local config = loadConfigurations(configFilePath)
local huntName = config.PositionsHunt
local positionsFilePath = basePath  .. "cavebot_" ..  playerName .. "_" .. huntName .. "_positions.txt"
local file = nil
local isWaitingForMonstersToClear = false
local destinations = {}
local currentDestinationIndex = 1
local maxMonstersToStop = config.maxMonstersToStop
local minMonstersToResume = config.minMonstersToResume
local distCreatures = config.distCreatures
local maxStepDelay = config.maxStepDelay
local singleStepDelay = config.singleStepDelay
local minStepDelay = config.minStepDelay
local EffectsWalk = config.EffectsWalk
local EffectsAlarm = config.EffectsAlarm
local hasBonusEffectOnStep = config.hasBonusEffectOnStep
local EffectsToWalk = config.EffectsToWalk
local EffectsToAlarm = config.EffectsToAlarm
local bonusEffectsOnStep = config.bonusEffectsOnStep
local itemsWalk = config.itemsWalk
local itemsAlarm = config.itemsAlarm
local itemsAlarmStop = config.itemsAlarmStop
local itemsToWalk = config.itemsToWalk
local itemsToAlarm = config.itemsToAlarm
local GMchatWalk = config.GMchatWalk
local GMchatAlarm = config.GMchatAlarm
local GMchatNames = config.GMchatNames
local TeleportEffectAlarm = config.TeleportEffectAlarm
local TeleportEffectAlarmInPZ = config.TeleportEffectAlarmInPZ
local TeleportDistanceAlarm = config.TeleportDistanceAlarm
local TeleportDistanceAlarmInPZ = config.TeleportDistanceAlarmInPZ
local TeleportDistance = config.TeleportDistance
local autoLootEnabled = config.autoLootEnabled
local delayClickLoot = config.delayClickLoot
local delayLooting = config.delayLooting
local monstersIgnore = config.monstersIgnore
local monstersStop99 = config.monstersStop99
local DiagonalCost = config.DiagonalCost
local isPosition = config.isPosition
local AntiKS = config.AntiKS
local reloadButtonX = config.HUDhorizontal
local reloadButtonY = config.HUDvertical
local GRAVARx = reloadButtonX
local GRAVARy = reloadButtonY + 40
local ANDARx = GRAVARx
local ANDARy = GRAVARy + 40
local STATUSx = ANDARx + 110
local STATUSy = ANDARy + 145



	
local function tableToString(t)
    -- Verifica se 't' é uma tabela
    if type(t) ~= "table" then
        -- Retorna uma mensagem ou valor padrão adequado se 't' não for uma tabela
        return "nil or not a table"
    end

    local stringList = {}
    for _, v in ipairs(t) do
        -- Se seus valores forem strings contendo espaços ou caracteres especiais, você pode querer delimitá-los com aspas
        local valueStr = type(v) == "string" and '"' .. v .. '"' or tostring(v)
        table.insert(stringList, valueStr)
    end
    return "{" .. table.concat(stringList, ", ") .. "}"
end


print("Max Monsters To Stop: " .. maxMonstersToStop)
print("Min Monsters To Resume: " .. minMonstersToResume)
print("distCreatures: " .. distCreatures)
print("maxStepDelay: " .. maxStepDelay)
print("singleStepDelay: " .. singleStepDelay)
print("minStepDelay: " .. minStepDelay)
print("Posicao Horizontal: " .. reloadButtonX)
print("Posicao Vertical: " .. reloadButtonY)
print("PositionsHunt: " .. huntName)
print("autoLootEnabled: " .. tostring(autoLootEnabled))
print("delayClickLoot: " .. tostring(delayClickLoot))
print("DiagonalCost: " .. DiagonalCost)
print("isPosition: " .. isPosition)
print("AntiKS: " .. tostring(AntiKS))
print("EffectsWalk: " .. tostring(EffectsWalk))
print("EffectsAlarm: " .. tostring(EffectsAlarm))
print("hasBonusEffectOnStep: " .. tostring(hasBonusEffectOnStep))
print("EffectsToWalk: " .. tableToString(EffectsToWalk))
print("EffectsToAlarm: " .. tableToString(EffectsToAlarm))
print("bonusEffectsOnStep: " .. tableToString(bonusEffectsOnStep))
print("itemsWalk: " .. tostring(itemsWalk))
print("itemsAlarm: " .. tostring(itemsAlarm))
print("itemsAlarmStop: " .. tostring(itemsAlarmStop))
print("itemsToWalk: " .. tableToString(itemsToWalk))
print("itemsToAlarm: " .. tableToString(itemsToAlarm))
print("GMchatWalk: " .. tostring(GMchatWalk))
print("GMchatAlarm: " .. tostring(GMchatAlarm))
print("TeleportEffectAlarm: " .. tostring(TeleportEffectAlarm))
print("TeleportEffectAlarmInPZ: " .. tostring(TeleportEffectAlarmInPZ))
print("TeleportDistanceAlarm: " .. tostring(TeleportDistanceAlarm))
print("TeleportDistanceAlarmInPZ: " .. tostring(TeleportDistanceAlarmInPZ))
print("TeleportDistance: " .. tostring(TeleportDistance))
print("monstersIgnore: " .. tableToString(monstersIgnore))
print("monstersStop99: " .. tableToString(monstersStop99))
print("GMchatNames: " .. tableToString(GMchatNames))


-- Criar o HUD
local meuHUD = HUD.new(STATUSx, STATUSy, "Inicie seu cavebot")
meuHUD:setColor(255, 255, 255)
local function atualizarHUD(texto)
    meuHUD:setText(texto)
end

-- Funcao para determinar a direcao com base nas posicoes atual e seguinte
local function getDirection(currentPos, nextPos)
    local dx = nextPos.x - currentPos.x
    local dy = nextPos.y - currentPos.y

    if dx > 0 and dy > 0 then
        return Enums.Directions.SOUTHEAST
    elseif dx < 0 and dy < 0 then
        return Enums.Directions.NORTHWEST
    elseif dx > 0 and dy < 0 then
        return Enums.Directions.NORTHEAST
    elseif dx < 0 and dy > 0 then
        return Enums.Directions.SOUTHWEST
    elseif dx > 0 then
        return Enums.Directions.EAST
    elseif dx < 0 then
        return Enums.Directions.WEST
    elseif dy > 0 then
        return Enums.Directions.SOUTH
    elseif dy < 0 then
        return Enums.Directions.NORTH
    end
end

local function directionToString(direction)
    local directionMap = {
    [Enums.Directions.NORTH] = "↑",     -- Representa Norte
    [Enums.Directions.EAST] = "→",      -- Representa Leste
    [Enums.Directions.SOUTH] = "↓",     -- Representa Sul
    [Enums.Directions.WEST] = "←",      -- Representa Oeste
    [Enums.Directions.SOUTHWEST] = "↙", -- Representa Sudoeste
    [Enums.Directions.SOUTHEAST] = "↘", -- Representa Sudeste
    [Enums.Directions.NORTHWEST] = "↖", -- Representa Noroeste
    [Enums.Directions.NORTHEAST] = "↗"  -- Representa Nordeste
    }
    return directionMap[direction] or "Desconhecida"
end

-- Destinos e lógica de navegacao
print("Definindo destinos de navegacao.")
-- Funcao para carregar destinos do arquivo
local function loadDestinationsFromFile(filePath)
    local destinations = {}
    local file = io.open(filePath, "r")

    -- Verifica se o arquivo existe
    if not file then
        print("Arquivo de posicoes nao encontrado, criando um novo arquivo com conteúdo inicial.")
        -- Cria um novo arquivo com conteúdo inicial
        file = io.open(filePath, "w")
        if file then
            file:write("    {x = 0, y = 0, z = 0},\n")  -- Escreve a linha inicial no arquivo
            file:close()
            -- Adiciona o destino inicial à lista de destinos
            table.insert(destinations, {x = 0, y = 0, z = 0})
        else
            print("Erro ao criar o arquivo de posicoes.")
            return destinations
        end
    else
        -- Lê o arquivo se ele existir
        for line in file:lines() do
            local x, y, z = string.match(line, "{x = (%d+), y = (%d+), z = (%d+)}")
            if x and y and z then
                table.insert(destinations, {x = tonumber(x), y = tonumber(y), z = tonumber(z)})
            end
        end
        file:close()
    end

    return destinations
end

-- Carregar destinos do arquivo
local filePath = positionsFilePath
local destinations = loadDestinationsFromFile(filePath)
local currentDestinationIndex = 1

-- Funcao para escolher o destino inicial mais próximo
local function chooseInitialDestination()
    local playerPos = Creature(Player.getId()):getPosition()
    -- Verifica se playerPos é nulo
    if not playerPos then
        print("Erro: Posição do jogador não disponível.")
        return
    end

    local nearestIndex, _ = getNearestDestination(playerPos, destinations)
    if nearestIndex and destinations[nearestIndex] then
        currentDestinationIndex = nearestIndex
    else
        if #destinations > 0 then
            currentDestinationIndex = 1  -- Caso não consiga encontrar, use o primeiro destino
        else
            print("Erro: Lista de destinos está vazia.")
            return
        end
    end

    -- Verifica se o destino escolhido é válido
    local destination = destinations[currentDestinationIndex]
    if destination then
        print("Destino inicial: ", destination.x, destination.y)
    else
        print("Erro: Destino inicial não encontrado.")
    end
end

-- Funcao para atualizar os waypoints e Botao
local function reloadWaypoints()
    destinations = loadDestinationsFromFile(positionsFilePath)
    currentDestinationIndex = 1 -- Reiniciar o índice para o comeco da lista
    Client.showMessage("Waypoints atualizados.")
end

-- Função auxiliar para verificar se uma criatura deve ser ignorada
local function shouldIgnoreCreature(creatureName)
    if not creatureName or creatureName:match("^%s*$") then
        return true
    end
    local formattedCreatureName = creatureName:lower():match("^(.-)%s*$")
    for _, ignoreName in ipairs(monstersIgnore) do
        if formattedCreatureName == ignoreName:lower() then
            return true
        end
    end
    return false
end

-- Função auxiliar para verificar se uma criatura conta como 99
local function isCreatureCountAs99(creatureName)
    if not creatureName or creatureName:match("^%s*$") then
        return false
    end
    local formattedCreatureName = creatureName:lower():match("^(.-)%s*$")
    for _, name in ipairs(monstersStop99) do
        if formattedCreatureName == name:lower() then
            return true
        end
    end
    return false
end

-- Função para calcular a distância entre duas posições
local function getDistanceBetween(pos1, pos2)
    if not pos1 or not pos2 then return math.huge end
    return math.max(math.abs(pos1.x - pos2.x), math.abs(pos1.y - pos2.y))
end

-- Função para contar criaturas ao redor dentro de um limite de distância em SQM, com regras especiais
local function countCreaturesAround(distanceLimit)
    local playerPos = Creature(Player.getId()):getPosition()
    if not playerPos then
        return 0
    end

    local creatureIds = Map.getCreatureIds(true, false)
    if not creatureIds then
        return 0
    end

    local count = 0
    for _, cid in ipairs(creatureIds) do
        local creature = Creature(cid)
        if creature then
            local creatureType = creature:getType()
            local creatureName = creature:getName()
            local creaturePos = creature:getPosition()
            
            if creatureType and creaturePos and creatureName and creatureType == Enums.CreatureTypes.CREATURETYPE_MONSTER then
                if not shouldIgnoreCreature(creatureName) then
                    if isCreatureCountAs99(creatureName) then
                        count = count + 99
                    elseif getDistanceBetween(playerPos, creaturePos) <= distanceLimit then
                        count = count + 1
                    end
                end
            end
        end
    end
    return count
end

-- Funcao para verificar se duas posicoes sao iguais
local function isSamePosition(pos1, pos2)
    wait(10)
    -- Verifica se as posicoes estao no mesmo nível z
    if pos1.z ~= pos2.z then
        return false
    end
    
    -- Calcula a distância entre as duas posicoes
    local distX = math.abs(pos1.x - pos2.x)
    local distY = math.abs(pos1.y - pos2.y)
    
    -- Considera chegada ao destino se estiverem exatamente na mesma posicao ou a uma distância de 1 SQM
    return (distX <= isPosition and distY <= isPosition)
end


-- Funcao para mover o jogador para o próximo destino
local function moveToNextDestination()
    currentDestinationIndex = currentDestinationIndex + 1
    if currentDestinationIndex > #destinations then
        currentDestinationIndex = 1
    end
end

-- Funcao para verificar se um tile e passável
local function isTilePassable(pos)
local ignoreBlockPath = true
local ignoreMagicField = true
local ignoreMonsters = false
    return Map.canWalk(pos.x, pos.y, pos.z, ignoreBlockPath, ignoreMagicField, ignoreMonsters)
end

-- Funcoes auxiliares para o algoritmo A*
local function heuristic(pos1, pos2)
    return math.abs(pos1.x - pos2.x) + math.abs(pos1.y - pos2.y)
end

local function getNeighbors(pos)
    return {
        {x = pos.x + 1, y = pos.y, z = pos.z},
        {x = pos.x - 1, y = pos.y, z = pos.z},
        {x = pos.x, y = pos.y + 1, z = pos.z},
        {x = pos.x, y = pos.y - 1, z = pos.z},
        {x = pos.x + 1, y = pos.y + 1, z = pos.z},
        {x = pos.x - 1, y = pos.y - 1, z = pos.z},
        {x = pos.x + 1, y = pos.y - 1, z = pos.z},
        {x = pos.x - 1, y = pos.y + 1, z = pos.z}
    }
end

-- algoritmo A*
-- Funcao auxiliar para converter um nó (posicao) em uma string
local function nodeToString(node)
    return "(" .. node.x .. ", " .. node.y .. ")" -- Ajuste conforme a estrutura do seu nó
end

-- Funcao auxiliar para calcular a distância de Manhattan entre dois pontos
local function manhattanDistance(nodeA, nodeB)
    return math.abs(nodeA.x - nodeB.x) + math.abs(nodeA.y - nodeB.y)
end

local function aStar(start, goal)
    --print("Iniciando A* com start:", nodeToString(start), "e goal:", nodeToString(goal))
    --wait(50)
	
	    -- Verifica a distância de Manhattan entre start e goal
    local distance = manhattanDistance(start, goal)
    --print("Distância calculada:", distance)
    --wait(50)

    -- Se a distância for maior que 5, retorna imediatamente
    if distance > 9 then
        --print("A* - Distância maior que 5 SQMs. Abortando cálculo.")
        return nil, "Distância muito grande"
    end

    local openSet = {[start] = true}
    local cameFrom = {}
    local gScore = {[start] = 0}
    local fScore = {[start] = heuristic(start, goal)}
    --print("Heurística inicial:", fScore[start])
    --wait(50)
    while next(openSet) do
        local current, lowestFScore = nil, math.huge
        for node, _ in pairs(openSet) do
            if fScore[node] and fScore[node] < lowestFScore then
                current, lowestFScore = node, fScore[node]
                --print("Nó atual com menor fScore:", nodeToString(current), "com fScore:", lowestFScore)
				--wait(50)
            end
        end

        if isSamePosition(current, goal) then
            --print("Goal alcancado:", nodeToString(goal))
			--wait(50)
            local path = {}
            while current do
                table.insert(path, 1, current)
                current = cameFrom[current]
            end
            -- Converte cada nó do caminho para string antes de concatenar
            local pathString = table.concat(table.map(path, nodeToString), ", ")
            --print("Caminho encontrado:", pathString)
			--wait(50)
            return path
        end

        openSet[current] = nil
        --print("Removendo", nodeToString(current), "do openSet")
		--wait(50)

        for _, neighbor in ipairs(getNeighbors(current)) do
			-- Identificar se o movimento é diagonal
			local isDiagonalMove = (current.x ~= neighbor.x) and (current.y ~= neighbor.y)
                local movementCost = isDiagonalMove and DiagonalCost or 1
			    local tentativeGScore = gScore[current] + movementCost
            ---print("Analisando vizinho:", nodeToString(neighbor))
			--wait(50)
            if isTilePassable(neighbor) then

                --print("tentativeGScore para", nodeToString(neighbor), ":", tentativeGScore)
				--wait(50)
                if tentativeGScore < (gScore[neighbor] or math.huge) then
                    cameFrom[neighbor] = current
                    gScore[neighbor] = tentativeGScore
                    fScore[neighbor] = gScore[neighbor] + heuristic(neighbor, goal)
                    openSet[neighbor] = true
                    --print("Atualizando", nodeToString(neighbor), "em openSet com gScore:", gScore[neighbor], "e fScore:", fScore[neighbor])
					--wait(50)
                end
            end
        end
    end

    print("A* - Caminho nao encontrado.")
	wait(1000)
    return nil -- Caminho nao encontrado
end

-- Nota: Lua padrao nao tem uma funcao `table.map`, entao você precisaria implementá-la ou converter manualmente.
-- Aqui está um exemplo simples de implementacao da funcao map que você pode usar:
function table.map(tbl, func)
    local newtbl = {}
    for i, v in ipairs(tbl) do
        newtbl[i] = func(v)
    end
    return newtbl
end



-- Variável para controlar a movimentacao
local isWalking = false

-- Funcao para atualizar o HUD
local function updateWalkHUD(walkButton, walkIcon)
    if isWalking then
        walkButton:setText("Andar (ON)")
        walkButton:setColor(0, 255, 0) -- Verde
        walkIcon:setColor(0, 255, 0) -- Verde
    else
        walkButton:setText("Andar (OFF)")
        walkButton:setColor(255, 0, 0) -- Vermelho
        walkIcon:setColor(255, 0, 0) -- Vermelho
    end
end

-- Funcao para encontrar o destino mais próximo
function getNearestDestination(currentPos, destinations)
    -- Verifica se currentPos é válido
    if not currentPos then
        print("Erro: Posição atual é nil.")
        return nil, nil
    end

    -- Verifica se destinations é uma tabela válida e não vazia
    if type(destinations) ~= "table" or #destinations == 0 then
        print("Erro: Lista de destinos é inválida ou vazia.")
        return nil, nil
    end

    local nearestIndex = nil
    local nearestDistance = math.huge

    for i, dest in ipairs(destinations) do
        local dist = math.sqrt((currentPos.x - dest.x)^2 + (currentPos.y - dest.y)^2 + (currentPos.z - dest.z)^2)
        if dist < nearestDistance then
            nearestDistance = dist
            nearestIndex = i
        end
    end

    return nearestIndex, nearestDistance
end

-- Carregar destinos e escolher o destino inicial mais próximo
destinations = loadDestinationsFromFile(filePath)
chooseInitialDestination() 

----------------------------------------------------------------------------------------------------------------------------------------
local soundDir = Engine.getScriptsDirectory() .. "/Sounds/AlarmeSetinha.wav"

local stopForMagicEffect = false

local cooldownTicks = 0
local cooldownLimit = 3
local cooldownTicksItems = 0
local cooldownLimitItems = 5
local cooldownTicksTp = 0
local cooldownLimitTp = 3

local tickRate = 1000

local function contains(table, val)
   for i=1,#table do
      if table[i] == val then 
         return true 
      end
   end
   return false
end

function onUpdate()
    if cooldownTicks > 0 then
        cooldownTicks = cooldownTicks - 1
    end
end

function onUpdate2()
    if cooldownTicksItems > 0 then
        cooldownTicksItems = cooldownTicksItems - 1
    end
end

function onUpdate3()
    if cooldownTicksTp > 0 then
        cooldownTicksTp = cooldownTicksTp - 1
    end
end

local effectIdToFind

function onInternalMagicEffect(type, x, y, z)
    local estadoMensagem = verificado and "Ativado" or "Bloqueado"

    if not verificado then
        return
    end

    local function playerinpz()
        return Player.getState(Enums.States.STATE_PIGEON)
    end
    
    if effectIdToFind and type == effectIdToFind then
        if x and y and z then
            Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Efeito da cor desejada encontrado em: (" .. x .. ", " .. y .. ", " .. z.. ")")
            print("Efeito da cor desejada encontrado em: " .. x .. ", " .. y .. ", " .. z)
            --Engine.disableCaveBot(false)
            stopForMagicEffect = true
            Map.goTo(0xFFFF,0xFFFF,7)
            wait(500)
            Map.goTo(x, y, z)
            effectIdToFind = nil
            wait(3000)
            --Engine.enableCaveBot(true)
            stopForMagicEffect = false
        else
            print("Erro: Coordenadas (x, y, z) não definidas.")
        end
    end

    local function isPlayerAtEffectPosition(effectX, effectY, effectZ)
        local players = Map.getCreatureIds(true, true) or {}
        if #players == 0 then return false end
    
        for _, playerId in ipairs(players) do
            local player = Creature(playerId)
            if player then  -- Certifique-se de que 'player' não é nil antes de acessar getPosition
                local position = player:getPosition()
                if position and position.x == effectX and position.y == effectY and position.z == effectZ then
                    if type == 11 and TeleportEffectAlarm and cooldownTicksTp == 0 then
                        if TeleportEffectAlarmInPZ or not playerinpz() then
                            cooldownTicksTp = cooldownLimitTp
                            Sound.play(soundDir)
                            Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | [Effect] You have been teleported!")
                            wait(3000)
                        end
                    end
                    return true
                end
            end
        end
        return false
    end

    if isPlayerAtEffectPosition(x, y, z) or playerinpz() then
        return
    end

    if cooldownTicks == 0 then
        if contains(EffectsToAlarm, type) or contains(EffectsToWalk, type) or (hasBonusEffectOnStep and contains(bonusEffectsOnStep, type)) then
            cooldownTicks = cooldownLimit

            if contains(EffectsToAlarm, type) and EffectsAlarm then
                Sound.play(soundDir)
                Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | MagicEffect Type: " .. tostring(type) .. " | Pos: (" .. x .. ", " .. y .. ", " .. z .. ")")
            end

            if contains(EffectsToWalk, type) and EffectsWalk then
                stopForMagicEffect = true
                passinhoDoMalandro(x, y, z)
                Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | MagicEffect Type: " .. tostring(type) .. " | Pos: (" .. x .. ", " .. y .. ", " .. z .. ")")
            elseif hasBonusEffectOnStep and contains(bonusEffectsOnStep, type) then
                stopForMagicEffect = true
                passinho(x, y, z)
                Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | MagicEffect Type: " .. tostring(type) .. " | Pos: (" .. x .. ", " .. y .. ", " .. z .. ")")
            else
                stopForMagicEffect = false
            end
        end
    end
end

Game.registerEvent(Game.Events.MAGIC_EFFECT, onInternalMagicEffect)

Timer("Update", onUpdate, tickRate)

Timer("Update2", onUpdate2, tickRate)

----------------------------------------------------------------------------------------------------------------------------------------
local function containsIgnoreCase(tbl, val)
    val = val:lower()
    for i=1,#tbl do
        if tbl[i]:lower() == val then
            return true
        end
    end
    return false
end

function handleGMChat(authorName, x, y, z)

    local estadoMensagem = verificado and "Ativado" or "Bloqueado"
    if verificado then
	
    if Player.getState(Enums.States.STATE_PIGEON) then
        return
    end
	
    if containsIgnoreCase(GMchatNames, authorName) and cooldownTicks == 0 then
        cooldownTicks = cooldownLimit

        if GMchatAlarm then
            Sound.play(soundDir)
			Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Chat Author: " .. tostring(authorName) .. " | Pos: (" .. tostring(x) .. ", " .. tostring(y) .. ", " .. tostring(z) .. ")")
       end

        if GMchatWalk then
            stopForMagicEffect = true
            passinhoDoMalandro(x, y, z)
			Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Chat Author: " .. tostring(authorName) .. " | Pos: (" .. tostring(x) .. ", " .. tostring(y) .. ", " .. tostring(z) .. ")")
        else
            stopForMagicEffect = false
        end
        return true
    end
    return false
end
end

----------------------------------------------------------------------------------------------------------------------------------------

local colorEffectMap = {
    ["roxo"] = 222,
    ["vermelho"] = 223,
    ["branco"] = 225,
    ["laranja"] = 224,
    ["azul"] = 226
}

local function extractColorFromText(text)
    local colorPattern = "%[(.-)%]"
    local colorText = text:match(colorPattern)
    return colorText and colorText:lower()
end

local function onColorMentioned(text)
    local color = extractColorFromText(text)
    if color then
        local effectId = colorEffectMap[color]
        if effectId then
            effectIdToFind = effectId
            print("Procurando efeito da cor " .. color .. " com ID: " .. effectIdToFind)
        end
    end
end

function passinhoDoMalandro(x, y, z)
    wait(600)
    Map.goTo(x, y, z)
    wait(600)
    Map.goTo(x - 1, y, z)
    wait(600)
    Map.goTo(x, y, z)
    wait(600)
    Map.goTo(x, y - 1, z)
    wait(600)
    Map.goTo(x, y, z)
    wait(600)
    Map.goTo(x + 1, y, z)
    wait(600)
    Map.goTo(x, y, z)
    wait(600)
    Map.goTo(x, y + 1, z)
    wait(600)
    Map.goTo(x, y, z)
	wait(400)
	Map.goTo(x, y + 1, z)
	wait(400)
	Map.goTo(x + 1, y, z)
	wait(1000)
    stopForMagicEffect = false
end

function passinho(x, y, z)
    wait(500)
    Map.goTo(x, y, z)
	wait(1000)
    stopForMagicEffect = false
end

----------------------------------------------------------------------------------------------------------------------------------------
local stopForItem = false

-- Função adaptada para encontrar um item específico e retornar sua posição
function findItem(itemIds)
    local tiles = Map.getTiles()
    for _, tile in ipairs(tiles) do
        for _, thing in ipairs(tile.things) do
            if contains(itemIds, thing.id) then
                return tile.pos, thing.id
            end
        end
    end
    return nil, nil
end

-- Função adaptada para verificar a presença de um dos itens específicos e ajustar movimentação e alarme
function checkForItems()
    local estadoMensagem = verificado and "Ativado" or "Bloqueado"
    if verificado then
        if Player.getState(Enums.States.STATE_PIGEON) then
            return
        end

        -- Obtem a posição da câmera/jogador
        local playerPos = mapCameraPosition()

        local itemPositionWalk, itemIdWalk = findItem(itemsToWalk)
        local itemPositionAlarm, itemIdAlarm = findItem(itemsToAlarm)
        local shouldStopForItem = false

        -- Ação para caminhar até o item, se na mesma posição Z
        if itemPositionWalk and itemsWalk and itemPositionWalk.z == playerPos.z then
            shouldStopForItem = true
            Map.goTo(itemPositionWalk.x, itemPositionWalk.y, itemPositionWalk.z)
            Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Walking to Item: (" .. itemIdWalk .. ", " .. itemPositionWalk.x .. ", " .. itemPositionWalk.y .. ", " .. itemPositionWalk.z .. ")")
        end

        -- Alarme apenas se o item está na mesma posição Z
        if itemPositionAlarm and itemsAlarm and itemPositionAlarm.z == playerPos.z then
            if cooldownTicksItems == 0 then
                cooldownTicksItems = cooldownLimitItems
                Sound.play(soundDir)
                Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Alarm for Item: (" .. itemIdAlarm .. ", " .. itemPositionAlarm.x .. ", " .. itemPositionAlarm.y .. ", " .. itemPositionAlarm.z .. ")")
            end
            if itemsAlarmStop then
                shouldStopForItem = true
            end
        end

        stopForItem = shouldStopForItem
    end
end

-- Timer para verificar periodicamente a presença dos itens
Timer("CheckForItems", function()
    checkForItems()
end, 200)
----------------------------------------------------------------------------------------------------------------------------------------


-- Funcao para verificar se há itens em uma posição
local function hasItemsOnPosition(x, y, z)
    local things = Map.getThings(x, y, z)
	
    if things and #things > 1 then
        return true
    end
    return false
end

-- Funcao para executar o loot automático
local function autoLoot()
    local playerPos = Creature(Player.getId()):getPosition()
    if not playerPos then 
        return
    end
    for y = -1, 1 do
        for x = -1, 1 do
            if hasItemsOnPosition(playerPos.x + x, playerPos.y + y, playerPos.z) then
                Game.lootCorpse(playerPos.x + x, playerPos.y + y, playerPos.z)
                wait(delayClickLoot)
            end
        end
    end
end

local function onTextMessageLoot(messageData)
    if autoLootEnabled and verificado and string.match(messageData.text, "Loot of") then
        autoLoot()
    end
end

Game.registerEvent(Game.Events.TEXT_MESSAGE, onTextMessageLoot)

-- Função auxiliar para verificar se há outros jogadores na tela
local function isPlayerOnScreen()
    if Client.isConnected() then
        local players = Map.getCreatureIds(true, true) or {}
        if #players == 1 then return end
        if players and type(players) == "table" then
            for _, playerId in ipairs(players) do
                local player = Creature(playerId)
                if player and player:getId() ~= Player.getId() and player:getType() == Enums.CreatureTypes.CREATURETYPE_PLAYER then
                    return true
                end
            end
        else
            print("Não há players na tela.")
        end
    else
        print("Client desconectado.")
    end
    return false
end

-- Modificacao da funcao Timer para usar o algoritmo A* e verificar a quantidade de monstros ao redor
Timer("PathFinding...", function()
    if not Client.isConnected() then
        return
    end
	
    if isWalking and verificado then
        local creature = Creature(Player.getId())
        local creaturePos = creature:getPosition()
        if not creaturePos then 
            print("Posição do jogador não encontrada.")
            return
        end

        local destination = destinations[currentDestinationIndex]
        local isPlayerOnScreen = isPlayerOnScreen()
        local creaturesAround = countCreaturesAround(distCreatures)
			
       -- Se AntiKS estiver ativado e houver um jogador na tela, pula diretamente para a movimentação
        if AntiKS and isPlayerOnScreen then
            atualizarHUD(
                "\nStatus: Anti-KS ativado" ..
                "\nMOBs: " .. creaturesAround .. " [Delay +" .. 0 .."ms]\n[Stop: " .. maxMonstersToStop .. " / Resume: " .. minMonstersToResume .. " / Dist: " .. distCreatures .. " SQM]" ..
                "\nDelay: " .. config.minStepDelay .. "ms\n[Min: " .. config.minStepDelay .. "ms / Max: " .. config.maxStepDelay .. "ms / MOB: +" .. config.singleStepDelay .."ms]" ..
                 "\nHunt: " .. huntName .. "\nAutoLoot: " .. tostring(autoLootEnabled) ..
                "\nStep: [" .. currentDestinationIndex .. " / " .. #destinations .. "]" 
				--.. "\nAutenticado: [" .. tostring(verificado) .. "]"
            )
            local path, errorMsg = aStar(creaturePos, destination)
            if path and #path > 1 then
                local nextStep = path[2]
                local direction = getDirection(creaturePos, nextStep)
                if direction then
                    Game.walk(direction)
                    wait(config.minStepDelay)
                    return -- Finaliza a execução se mover com sucesso
                end
            end
			    if not isSamePosition(creaturePos, destination) then
				if destination and type(destination) == "table" and destination.x and destination.y and destination.z then
				Map.goTo(destination.x, destination.y, destination.z)
				Client.showMessage("[AntiKS] Recuperando rota, aguarde chegar ao local.")
				wait(4000) -- Ajuste o tempo de espera conforme necessário
				end
				end
        end
		
        if isSamePosition(creaturePos, destination) then
            moveToNextDestination()
            destination = destinations[currentDestinationIndex]
        else

            local calculatedDelay = creaturesAround * config.singleStepDelay
            calculatedDelay = math.max(calculatedDelay, config.minStepDelay)
            calculatedDelay = math.min(calculatedDelay, config.maxStepDelay)

            if creaturesAround >= maxMonstersToStop then
                    isWaitingForMonstersToClear = true
                elseif creaturesAround <= minMonstersToResume and isWaitingForMonstersToClear then
                    if autoLootEnabled then
                        wait(delayLooting)
                    end
                    isWaitingForMonstersToClear = false
                end
        if not (AntiKS and isPlayerOnScreen) then
            atualizarHUD(
                "\nStatus: " .. (isWaitingForMonstersToClear and "Aguardando BOX" or "    ") ..
                "\nMOBs: " .. creaturesAround .. " [Delay +" .. calculatedDelay - config.minStepDelay .."ms]\n[Stop: " .. maxMonstersToStop .. " / Resume: " .. minMonstersToResume .. " / Dist: " .. distCreatures .. " SQM]" ..
                "\nDelay: " .. calculatedDelay .. "ms\n[Min: " .. config.minStepDelay .. "ms / Max: " .. config.maxStepDelay .. "ms / MOB: +" .. config.singleStepDelay .."ms]" ..
                 "\nHunt: " .. huntName .. "\nAutoLoot: " .. tostring(autoLootEnabled) ..
                "\nStep: [" .. currentDestinationIndex .. " / " .. #destinations .. "]" 
				--.. "\nAutenticado: [" .. tostring(verificado) .. "]"
            )
		end
            if not isWaitingForMonstersToClear and not stopForItem and not stopForMagicEffect then
                local path, errorMsg = aStar(creaturePos, destination)
                if path and #path > 1 then
                    local nextStep = path[2]
                    local direction = getDirection(creaturePos, nextStep)
                    if direction then
                        Game.walk(direction)
                        wait(calculatedDelay)
                        local directionText = directionToString(direction)
                        atualizarHUD(
                            "\nStatus: " .. (isWaitingForMonstersToClear and "Aguardando BOX" or " " .. directionText ..  " ") ..
                            "\nMOBs: " .. creaturesAround .. " [Delay +" .. calculatedDelay - config.minStepDelay .."ms]\n[Stop: " .. maxMonstersToStop .. " / Resume: " .. minMonstersToResume .. " / Dist: " .. distCreatures .. " SQM]" ..
                            "\nDelay: " .. calculatedDelay .. "ms\n[Min: " .. config.minStepDelay .. "ms / Max: " .. config.maxStepDelay .. "ms / MOB: +" .. config.singleStepDelay .."ms]" ..
                            "\nHunt: " .. huntName .. "\nAutoLoot: " .. tostring(autoLootEnabled) ..
							"\nStep: [" .. currentDestinationIndex .. " / " .. #destinations .. "]" 
							--.. "\nAutenticado: [" .. tostring(verificado) .. "]"
                        )
                    else
                        print("Direcao inválida encontrada.")
                    end
                elseif errorMsg == "Distância muito grande" or not path then
                print("Tentando alternativa [Walker 1].")
                -- Verifica novamente se nao está próximo para evitar chamadas repetitivas ao Map.goTo
                if not isSamePosition(creaturePos, destination) then
				
			atualizarHUD(
                            "\nStatus: " .. (isWaitingForMonstersToClear and "    " or " Recuperando rota ") ..
                            "\nMOBs: " .. creaturesAround .. " [Delay +" .. calculatedDelay - config.minStepDelay .."ms]\n[Stop: " .. maxMonstersToStop .. " / Resume: " .. minMonstersToResume .. " / Dist: " .. distCreatures .. " SQM]" ..
                            "\nDelay: " .. calculatedDelay .. "ms\n[Min: " .. config.minStepDelay .. "ms / Max: " .. config.maxStepDelay .. "ms / MOB: +" .. config.singleStepDelay .."ms]" ..
                            "\nHunt: " .. huntName .. "\nAutoLoot: " .. tostring(autoLootEnabled) ..
							"\nStep: [" .. currentDestinationIndex .. " / " .. #destinations .. "]" 
							--.. "\nAutenticado: [" .. tostring(verificado) .. "]"
                        )
						
                    Map.goTo(destination.x, destination.y, destination.z)
					Client.showMessage("[Walker 1] Recuperando rota, aguarde chegar ao local.")
					wait(4000)
					-- Ajuste o tempo de espera conforme necessário
                else
                    print("Já próximo do destino.")
                end
				else
				print("Tentando alternativa [Walker 2].")
				if destination and type(destination) == "table" and destination.x and destination.y and destination.z then
				Map.goTo(destination.x, destination.y, destination.z)
				Client.showMessage("[Walker 2] Recuperando rota, aguarde chegar ao local.")
				wait(4000) -- Ajuste o tempo de espera conforme necessário
				else
				print("Destino inválido para Map.goTo")
				end
				end
            end
        end
    end
end, 5)

-- Icone no HUD para ANDAR
local iconId = 32616

local walkIcon = HUD.new(ANDARx, ANDARy, iconId)
walkIcon:setDraggable(false)
local walkButton = HUD.new(ANDARx, ANDARy, "Andar (ON)")
walkButton:setDraggable(false)

walkButton:setCallback(function()
    isWalking = not isWalking
    updateWalkHUD(walkButton, walkIcon)
end)

walkIcon:setCallback(function()
    isWalking = not isWalking
    updateWalkHUD(walkButton, walkIcon)
end)

updateWalkHUD(walkButton, walkIcon)

local isRecording = false
local lastPosition = {x = 0, y = 0, z = 0}
local hudButton, hudIcon


local function updateHUD()
    if isRecording then
        hudButton:setText("Gravar(ON)")
		hudButton:setColor(0, 255, 0) -- Verde
        hudIcon:setColor(0, 255, 0) -- Verde
    else
        hudButton:setText("Gravar(OFF)")
		hudButton:setColor(255, 0, 0) -- Vermelho
        hudIcon:setColor(255, 0, 0) -- Vermelho


    end
end

local function recordPosition()
    local player = Creature(Player.getId())
    if not player then
		Client.showMessage("Erro: Jogador nao encontrado.")
        return
    end

    local pos = player:getPosition()
    if not pos or pos.x == nil or pos.y == nil or pos.z == nil then
		Client.showMessage("Erro: nao foi possível obter a posicao do jogador.")
        return
    end

    local roundedPos = {x = math.floor(pos.x + 0.5), y = math.floor(pos.y + 0.5), z = math.floor(pos.z + 0.5)}

    if math.abs(roundedPos.x - lastPosition.x) >= 2 or math.abs(roundedPos.y - lastPosition.y) >= 2 then
        lastPosition = {x = roundedPos.x, y = roundedPos.y, z = roundedPos.z}
        local coordinatesText = string.format("    {x = %d, y = %d, z = %d},", roundedPos.x, roundedPos.y, roundedPos.z)
			   Client.showMessage(coordinatesText)
		local file = io.open(positionsFilePath, "a")
        if file then
            file:write(coordinatesText .. "\n")
            file:close()

        else
			Client.showMessage("Erro: nao foi possível abrir o arquivo.")
        end
    end
end

local function recordInitialPosition()
    local file = io.open(positionsFilePath, "w") -- Abrir para escrita, limpando o arquivo
    if file then
        local player = Creature(Player.getId())
        if player then
            local pos = player:getPosition()
            local roundedPos = {x = math.floor(pos.x + 0.5), y = math.floor(pos.y + 0.5), z = math.floor(pos.z + 0.5)}
            local coordinatesText = string.format("    {x = %d, y = %d, z = %d},\n", roundedPos.x, roundedPos.y, roundedPos.z)
            file:write(coordinatesText) -- Escreve a posicao inicial no arquivo
            lastPosition = roundedPos -- Atualiza a última posicao registrada
            Client.showMessage(coordinatesText) -- Opcional: Mostra a mensagem no cliente
        else
            Client.showMessage("Erro: Jogador nao encontrado.")
        end
        file:close()
    else
        Client.showMessage("Erro: nao foi possível abrir o arquivo para gravar a posicao inicial.")
    end
end

Timer("recordPositionTimer", function()
    if isRecording then
        recordPosition()
    end
end, 50)

-- Icone no HUD para GRAVAR
local iconId = 5706  -- ID do item para o ícone

hudIcon = HUD.new(GRAVARx, GRAVARy, iconId)
hudIcon:setDraggable(false)
hudButton = HUD.new(GRAVARx, GRAVARy, "Gravar(OFF)")
hudButton:setDraggable(false)
hudButton:setColor(255, 255, 255)

		
hudButton:setCallback(function()
    isRecording = not isRecording
    if isRecording then
        recordInitialPosition() -- Grava a posicao inicial e limpa o conteúdo anterior do arquivo
    else
        -- Código adicional para quando a gravacao e pausada ou finalizada
    end
    updateHUD() -- Atualiza o HUD com base no estado atual de gravacao
	reloadWaypoints()
end)

hudIcon:setCallback(function()
    isRecording = not isRecording
    if isRecording then
        recordInitialPosition() -- Mesma lógica aplicada ao clicar no ícone
    else
        -- Código adicional para quando a gravacao e pausada ou finalizada
    end
    updateHUD()
end)

function onInternalTalkCombined(authorName, authorLevel, type, x, y, z, text)
    if Player and Player.getName and authorName then
        if authorName:lower() == Player.getName():lower() then
            onColorMentioned(text)
            return 
        end
    else
        print("Erro: 'Player' ou 'authorName' é nil.")
        return
    end

    if authorLevel and authorLevel ~= 0 then
        if type == 1 or type == 2 or type == 3 or type == 4 or type == 36 then
            handleGMChat(authorName, x, y, z)
        end
    else
        print("Erro: 'authorLevel' é nil ou igual a 0.")
    end
end

Game.registerEvent(Game.Events.TALK, onInternalTalkCombined)


-- Timer para verificar periodicamente a presença dos itens
Timer("CheckForItems", function()
    checkForItems()
end, 200)

-- Funções para verificar se o jogador foi teleportado
function getAdjustedSpeed()
    local playerSpeed = creatureGetSpeed(Player.getId())
    local calculatedValue = 100 / playerSpeed

    if calculatedValue < 100 then
        return 100
    else
        return calculatedValue
    end
end

local TeleportDistance1 = TeleportDistance
local UpdateInterval = calculatedValue
local CheckInterval = 5

function getCurrentPlayerPosition()
  local playerPosition = creatureGetPosition(playerGetId())
  if not playerPosition then return {} end
  return playerPosition
end

local lastPosition = getCurrentPlayerPosition()

local function getDistanceBetween(pos1, pos2)
    if not pos1 or not pos2 then 
        return 0
    end
    if not pos1.x or not pos1.y or not pos2.x or not pos2.y then
        return 0
    end
    return math.max(math.abs(pos1.x - pos2.x), math.abs(pos1.y - pos2.y))
end

Timer("UpdatePosition", function()
    lastPosition = getCurrentPlayerPosition()
end, UpdateInterval)

function checkTeleport()
    local estadoMensagem = verificado and "Ativado" or "Bloqueado"
    local currentPosition = getCurrentPlayerPosition()
    local distance = getDistanceBetween(currentPosition, lastPosition)
    if distance >= TeleportDistance and TeleportDistanceAlarm and TeleportDistanceAlarmInPZ and cooldownTicksTp == 0 then
        cooldownTicksTp = cooldownLimitTp
        Sound.play(soundDir)
        Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Teleport Detected: Moved " .. distance .. " SQMs!")
        wait(3000)
    end
end

Timer("CheckTeleport", function()
    checkTeleport()
end, CheckInterval)
