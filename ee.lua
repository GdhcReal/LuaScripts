local Place_ID_With_Matching_Luarmor_ID = {
    [16472538603] = "https://api.luarmor.net/files/v3/loaders/332501294a123e4dde6b2dc05950b454.lua"; -- Tha Bronx 3
    [18642421777] = "https://api.luarmor.net/files/v3/loaders/332501294a123e4dde6b2dc05950b454.lua"; -- Tha Bronx 3
    [13643807539] = "https://api.luarmor.net/files/v3/loaders/da9311f3c94e11c2dccd036885309e28.lua"; -- South Bronx
    [14413475235] = "https://api.luarmor.net/files/v3/loaders/da9311f3c94e11c2dccd036885309e28.lua"; -- South Bronx
    [10179538382] = "TELEPORTER";
};

if not Place_ID_With_Matching_Luarmor_ID[game.PlaceId] then
    game.Players.LocalPlayer:Kick("Valary.gg | This game is not supported!")
end

if Place_ID_With_Matching_Luarmor_ID[game.PlaceId] == "TELEPORTER" then
    return
end

if not getfenv().script_key then
    game.Players.LocalPlayer:Kick("Valary.gg | Key not found!")
end

script_key = getfenv().script_key
writefile('valarygg_key.txt', getfenv().script_key)
loadstring(game:HttpGet(Place_ID_With_Matching_Luarmor_ID[game.PlaceId]))()
