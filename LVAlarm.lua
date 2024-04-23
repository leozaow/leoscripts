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
local versao_rev = "1.0.0-07/04"
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

local Directory = Engine.getScriptsDirectory()						
	
local basePath = Directory .. "\\"
local playerName = Player.getName()

print("Iniciando LVAlarm")

-- Funcao para carregar configuracoes de um arquivo
-- Valores padrao de configuracao
local defaultConfig = {
	EffectsWalk = true,
	EffectsAlarm = true,
	hasBonusEffectOnStep = true,
	EffectsToWalk = {56, 263, 264, 265, 266, 267, 244},
	EffectsToAlarm = {56, 57, 263, 264, 265, 266, 267, 307, 244},
	bonusEffectsOnStep = {193},
	itemsWalk = true,
	itemsAlarm = true,
	itemsToWalk = {44850, 39176, 39533},
	itemsToAlarm = {23473},
	ChatWalk = false,
	ChatAlarm = true,
	NamesChatIgnore = {"arieswar", "Cachero"},
    TeleportEffectAlarm = true,
    TeleportEffectAlarmInPZ = true,
    TeleportDistanceAlarm = true,
    TeleportDistance = 2,
}

-- Lista que define a ordem das chaves para escrita
local configOrder = {
	"EffectsWalk",
	"EffectsAlarm",
	"hasBonusEffectOnStep",
	"EffectsToWalk",
	"EffectsToAlarm",
	"bonusEffectsOnStep",
	"itemsWalk",
	"itemsAlarm",
	"itemsToWalk",
	"itemsToAlarm",
	"ChatWalk",
	"ChatAlarm",
	"NamesChatIgnore",
    "TeleportEffectAlarm",
    "TeleportEffectAlarmInPZ",
    "TeleportDistanceAlarm",
    "TeleportDistance",
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
				if key == "EffectsToWalk" or key == "EffectsToAlarm" or key == "bonusEffectsOnStep" or key == "itemsToWalk" or key == "itemsToAlarm" or key == "monstersIgnore" or key == "monstersStop99" or key == "NamesChatIgnore" then
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

local configFilePath = basePath .. "LVAlarm_" .. playerName .. "_config.txt"
local config = loadConfigurations(configFilePath)
local EffectsWalk = config.EffectsWalk
local EffectsAlarm = config.EffectsAlarm
local hasBonusEffectOnStep = config.hasBonusEffectOnStep
local EffectsToWalk = config.EffectsToWalk
local EffectsToAlarm = config.EffectsToAlarm
local bonusEffectsOnStep = config.bonusEffectsOnStep
local itemsWalk = config.itemsWalk
local itemsAlarm = config.itemsAlarm
local itemsToWalk = config.itemsToWalk
local itemsToAlarm = config.itemsToAlarm
local ChatWalk = config.ChatWalk
local ChatAlarm = config.ChatAlarm
local NamesChatIgnore = config.NamesChatIgnore
local TeleportEffectAlarm = config.TeleportEffectAlarm
local TeleportEffectAlarmInPZ = config.TeleportEffectAlarmInPZ
local TeleportDistanceAlarm = config.TeleportDistanceAlarm
local TeleportDistance = config.TeleportDistance

	
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

print("EffectsWalk: " .. tostring(EffectsWalk))
print("EffectsAlarm: " .. tostring(EffectsAlarm))
print("hasBonusEffectOnStep: " .. tostring(hasBonusEffectOnStep))
print("EffectsToWalk: " .. tableToString(EffectsToWalk))
print("EffectsToAlarm: " .. tableToString(EffectsToAlarm))
print("bonusEffectsOnStep: " .. tableToString(bonusEffectsOnStep))
print("itemsWalk: " .. tostring(itemsWalk))
print("itemsAlarm: " .. tostring(itemsAlarm))
print("itemsToWalk: " .. tableToString(itemsToWalk))
print("itemsToAlarm: " .. tableToString(itemsToAlarm))
print("ChatWalk: " .. tostring(ChatWalk))
print("ChatAlarm: " .. tostring(ChatAlarm))
print("NamesChatIgnore: " .. tableToString(NamesChatIgnore))
print("TeleportEffectAlarm: " .. tostring(TeleportEffectAlarm))
print("TeleportEffectAlarmInPZ: " .. tostring(TeleportEffectAlarmInPZ))
print("TeleportDistanceAlarm: " .. tostring(TeleportDistanceAlarm))
print("TeleportDistance: " .. tostring(TeleportDistance))


function table.map(tbl, func)
    local newtbl = {}
    for i, v in ipairs(tbl) do
        newtbl[i] = func(v)
    end
    return newtbl
end

local soundDir = Engine.getScriptsDirectory() .. "/sounds/AlarmeSetinha.wav"

local cooldownTicks = 0
local cooldownLimit = 3
local cooldownTicksItems = 0
local cooldownLimitItems = 5
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

function onInternalMagicEffect(type, x, y, z)
    local estadoMensagem = verificado and "Ativado" or "Bloqueado"

    if not verificado then
        return
    end

    local function playerinpz()
        return Player.getState(Enums.States.STATE_PIGEON)
    end
    
    if effectIdToFind and type == effectIdToFind then
        Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Efeito da cor desejada encontrado em: ()" .. x .. ", " .. y .. ", " .. z.. ")")
        print("Efeito da cor desejada encontrado em: " .. x .. ", " .. y .. ", " .. z)
        Map.goTo(x, y, z)
        effectIdToFind = nil
    end

    local function isPlayerAtEffectPosition(effectX, effectY, effectZ)
        local players = Map.getCreatureIds(true, true) or {}
        if #players == 0 then return false end

        for _, playerId in ipairs(players) do
            local player = Creature(playerId)
            if player and player:getPosition().x == effectX and player:getPosition().y == effectY and player:getPosition().z == effectZ then
                if type == 11 and TeleportEffectAlarm then
                    if TeleportEffectAlarmInPZ or not playerinpz() then
                        Sound.play(soundDir)
                        Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | [Effect] You have been teleported!")
                    end
                end
                return true
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
	

    if not containsIgnoreCase(NamesChatIgnore, string.lower(authorName)) and cooldownTicks == 0 then
        cooldownTicks = cooldownLimit

        if ChatAlarm then
            Sound.play(soundDir)
			Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Chat Author: " .. tostring(authorName) .. " | Pos: (" .. tostring(x) .. ", " .. tostring(y) .. ", " .. tostring(z) .. ")")

        end

        if ChatWalk then
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

local colorEffectMap = {
    ["roxo"] = 222,
    ["vermelho"] = 223,
    ["branco"] = 225,
    ["laranja"] = 224,
    ["azul"] = 226
}

local effectIdToFind

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

function onInternalTalkCombined(authorName, authorLevel, type, x, y, z, text)
    if authorName:lower() == Player.getName():lower() then
        onColorMentioned(text)
        return 
    end

    if authorLevel ~= 0 then
        if type == 1 or type == 2 or type == 3 or type == 4 or type == 36 then
            handleGMChat(authorName, x, y, z)
        end
    end
end

Game.registerEvent(Game.Events.TALK, onInternalTalkCombined)

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
    local pos = Creature(Player.getId()):getPosition()
    return {x = pos.x, y = pos.y, z = pos.z}
end

local lastPosition = getCurrentPlayerPosition()

local function getDistanceBetween(pos1, pos2)
    if not pos1 or not pos2 then return math.huge end
    return math.max(math.abs(pos1.x - pos2.x), math.abs(pos1.y - pos2.y))
end

Timer("UpdatePosition", function()
    lastPosition = getCurrentPlayerPosition()
end, UpdateInterval)

function checkTeleport()
    local estadoMensagem = verificado and "Ativado" or "Bloqueado"
    local currentPosition = getCurrentPlayerPosition()
    local distance = getDistanceBetween(currentPosition, lastPosition)
    if distance >= TeleportDistance and TeleportDistanceAlarm then
        Sound.play(soundDir)
        Client.showMessage("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLVAlarm: " .. estadoMensagem .. " | Teleport Detected: Moved " .. distance .. " SQMs!")
    end
end

Timer("CheckTeleport", function()
    checkTeleport()
end, CheckInterval)
