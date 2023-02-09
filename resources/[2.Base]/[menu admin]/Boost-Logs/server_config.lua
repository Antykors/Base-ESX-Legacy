Config = {}
    Config.Logs = {
        ['default'] = '', -- Webhok link
        ['inventory'] = '',
    }


Config.Colors = {
    ["default"] = 16711680,
    ["blue"] = 25087,
    ["green"] = 762640,
    ["white"] = 16777215,
    ["black"] = 0,
    ["orange"] = 16743168,
    ["lightgreen"] = 65309,
    ["yellow"] = 15335168,
    ["turqois"] = 62207,
    ["pink"] = 16711900,
    ["red"] = 16711680,
}

--[[
    Usage:
    local data = {
        ['Player'] = nil, -- You need to set source here
        ['Target'] = nil, -- You need to set source here
        ['Log'] = 'default', -- Log name
        ['Title'] = 'Title', -- Title
        ['Message'] = 'Message' -- Message
        ['Color'] = 'blue', -- Set your color here check Config.Colors for available colors
    }

    TriggerEvent('Boost-Logs:SendLog', data)

]]--
