#!/usr/bin/env lua

-- LAUNCH : .\lua ..\main.lua

-- Function syracuse

local function syracuse(nombre)
    if(nombre % 2 == 0) then
        return nombre / 2
    else
        return nombre * 3 + 1
    end
end

tempsDebut = os.clock()
local function endProgram()
    local tempsFin = os.clock()
    print("Temps d'execution : " .. tempsFin - tempsDebut .. " secondes")
    os.exit()
end

local base = 2
local nombreMax=base

while(true) do
    local nombre = base

    while(nombre ~= 1) do
        nombre = syracuse(nombre) + 0
        if(nombre>nombreMax) then
            nombreMax = nombre + 0
            print(nombre," pour une valeur de base : ",base)
        end
    end
    base = base + 1
    nombre = 0
    if (base%10000==0) then -- Arrêt du programme après 10 000 itérations
        endProgram()
    end
end