---------------------------------------------------------------------------------------------------------------------
-- Discord Comunidade
----------------------------------------------------------------------------------------------------------------------------

--- Mamede Ursinho
--  https://discord.gg/TMx4SprxCg


----------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
-- Variaveis
-----------------------------------------------------------------------------------------------------------------------------

etapa = 0

-----------------------------------------------------------------------------------------------------------------------------
-- Local
-----------------------------------------------------------------------------------------------------------------------------

local blip = {164.62, -1004.92, 29.36}

-----------------------------------------------------------------------------------------------------------------------------
-- Code
-----------------------------------------------------------------------------------------------------------------------------


Citizen.CreateThread(function()
    while true do 
        sleep = 1000
        local ped = PlayerPedId()
        local dist = GetDistanceBetweenCoords(GetEntityCoords(ped),blip[1],blip[2],blip[3],true)
        if dist <= 30 and etapa == 0 then
            sleep = 1 
            DrawMarker(21,blip[1],blip[2],blip[3],0,0,0,0,0,0,1.0,1.0,1.0,255,0,0,100,true,false,false,true)
            if dist <= 0.6 then 
                msg ("NÃO PRESSIONE  ~b~E~w~ POR FAVOR! ",4,0.5,0.92,0.50,255,255,255,180)
                if IsControlJustPressed(0,38) then 

                    etapa = 1

                    TriggerEvent("Notify","sucesso","Curioso!",2000)
                    TriggerEvent("Notify","sucesso","Curioso!",2000)

                    SetTimeout(5000,function ( )
                        SetEntityCoords(ped,-75.35, -817.75, 326.19,true,true,true,true)
                        TriggerEvent("Notify","sucesso","Agora vai ficar de Castigo!", 10000)
                    end)

                    SetTimeout(60000,function ( )
                        SetEntityCoords(ped,165.57, -983.77, 29.87,true,true,true,true)
                        etapa = 0
                        TriggerEvent("Notify","sucesso","Aprender a <b>Ler?</b>", 5000)
                    end)

                end
            end
        end
        Wait(sleep)
    end
end)


-----------------------------------------------------------------------------------------------------------------------------
-- Funcoes
-----------------------------------------------------------------------------------------------------------------------------


function msg (text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end