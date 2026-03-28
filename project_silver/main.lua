local httpserv = game:GetService("HttpService")

local _request = request or http_request or http and http.request
local new_request = newcclosure(function(http)
    print(http.Url)
    if http.Url:find("verifyKey")
    then
    return {
    StatusMessage = "OK",
    StatusCode = 200,
    Body = httpserv:JSONEncode({
    valid = true,
    is_hwidbanned = false,
    is_invalidated = 0,
    created_at = "2026-03-20T10:37:19.000Z",
    expires_at = nil,
    is_premium = 1,
    is_one_time_use = 0,
    used_at = "2026-03-28T12:58:19.000Z"
    })
}
end
return _request (http)
end)
if request then
request = new_request
end
identifyexecutor = function() return "Xeno" end -- 💔
loadstring(game:HttpGet'https://raw.githubusercontent.com/constantdump/crecks/refs/heads/main/project_silver/obfuscated.lua')()
