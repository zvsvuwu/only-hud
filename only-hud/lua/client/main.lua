ESX = exports["es_extended"]:getSharedObject()
cache = {}
local client = {}

client.setupScript = function()
    Wait(1000)
    SendNUIMessage({
        action = 'setupHud'
    })

end

RegisterNetEvent('esx:playerLoaded', client.setupScript)
CreateThread(client.setupScript)